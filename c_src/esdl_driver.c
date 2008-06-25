/*
 *  Copyright (c) 2001 Dan Gudmundsson
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 *     $Id: esdl_driver.c,v 1.2 2006/05/15 14:45:44 dgud Exp $
 */

#ifdef HAVE_CONFIG_H
#  include "config.h"
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _WIN32
#include <windows.h>
#include <io.h>
#else
#include <unistd.h>
#endif

#ifdef _OSX_COCOA
#include "CPS.h"
#include "SDLMain.h"
#include <Cocoa/Cocoa.h>
#include <objc/objc-runtime.h>
#endif

#include <errno.h>
#include <sys/types.h>
#include <fcntl.h>

#include "esdl.h"

#define TEMP_BINARY_SIZE 512

static ErlDrvData sdl_driver_start(ErlDrvPort port, char *buff);
static void sdl_driver_stop(ErlDrvData handle);
static void sdl_driver_finish(void);
static int sdl_driver_control(ErlDrvData handle, unsigned int command, 
			      char* buf, int count, char** res, int res_size);
static void standard_outputv(ErlDrvData drv_data, ErlIOVec *ev);

/*
** The driver struct
*/
static ErlDrvEntry sdl_driver_entry = {
    NULL,		   /* F_PTR init, N/A */
    sdl_driver_start,      /* L_PTR start, called when port is opened */
    sdl_driver_stop,       /* F_PTR stop, called when port is closed */
    NULL,	           /* F_PTR output, called when erlang has sent */
    NULL,                  /* F_PTR ready_input, called when input descriptor 
			      ready */
    NULL,                  /* F_PTR ready_output, called when output 
			      descriptor ready */
    "sdl_driver",          /* char *driver_name, the argument to open_port */
    sdl_driver_finish,     /* F_PTR finish, called when unloaded */
    NULL,                  /* void * that is not used (BC) */
    sdl_driver_control,    /* F_PTR control, port_control callback */
    NULL,                  /* F_PTR timeout, reserved */
    standard_outputv,	   /* F_PTR outputv, reserved */
};

DRIVER_INIT(sdl_driver)
{
   return &sdl_driver_entry;
}

static ErlDrvData sdl_driver_start(ErlDrvPort port, char *buff)
{      
   sdl_data *data;   

#ifdef _OSX_COCOA
   CPSProcessSerNum PSN;
   OSErr err;
#endif /* _OSX_COCOA */

#ifdef _WIN32
   if ( SDL_RegisterApp("Erlang SDL", CS_BYTEALIGNCLIENT, 
			GetModuleHandle(NULL)) < 0 ) {
      fprintf(stderr, "WinMain() error %s \n", SDL_GetError());
      return(ERL_DRV_ERROR_GENERAL);
   }
#endif /* _WIN32 */
   
   data = malloc(sizeof(sdl_data));
   
   if (data == NULL) {
      fprintf(stderr, " Couldn't alloc mem\r\n");
      return(ERL_DRV_ERROR_GENERAL);  /* ENOMEM */      
   } else {
      set_port_control_flags(port, PORT_CONTROL_FLAG_BINARY);
      data->driver_data = port;
      //      data->fns   = init_fps();   
      
      data->op    = 0;
      data->len   = 0;
      data->buff  = NULL; 

      data->temp_bin = driver_alloc_binary(TEMP_BINARY_SIZE);

      data->next_bin = 0;

      init_fps(data);

#ifdef _OSX_COCOA
      // Removes the warnings about memory leakage
      // (not sure it actually works, though)
      data->release_pool = 
	objc_msgSend(objc_msgSend(objc_getClass("NSAutoreleasePool"), 
				  @selector(alloc)), @selector(init));
 
      data->app = objc_msgSend(objc_getClass("NSApplication"), 
			       @selector(sharedApplication));

      // To get a Menu & a dock icon : 
      err = CPSGetCurrentProcess(&PSN);
      assert(!(err = CPSSetProcessName(&PSN,"ESDL")));
      assert(!(err = CPSEnableForegroundOperation(&PSN,0x03,0x3C,0x2C,0x1103)));
      assert(!(err = CPSSetFrontProcess(&PSN)));

      // Makes the SDL window respond to keyboard events (???)
      //[NSAppleEventManager sharedAppleEventManager];

#endif /* _OSX_COCOA */
   }
   return (ErlDrvData) data;
}

static void
sdl_driver_stop(ErlDrvData handle) 
{  
  sdl_data *sd = ((sdl_data *)handle);

  SDL_Quit();
  free(sd->fun_tab);
  free(sd->str_tab);

#ifdef _WIN32
  UnregisterClass("Erlang SDL", GetModuleHandle(NULL));
#endif /* _WIN32 */

  free(handle);
}

static void
sdl_driver_finish(void) 
{
}

static int
sdl_driver_control(ErlDrvData handle, unsigned op,
		   char* buf, int count, char** res, int res_size)
{
  sdl_data* sd = (sdl_data *) handle;
  sdl_fun func;

  sd->buff = NULL;
  sd->len = 0;
  sd->op = op;
  func = sd->fun_tab[op];
  func(sd, count, buf);
  (*res) = sd->buff;
  return sd->len;
}

static int
sdl_driver_debug_control(ErlDrvData handle, unsigned op,
			 char* buf, int count, char** res, int res_size)
{
  sdl_data* sd = (sdl_data *) handle;
  sdl_fun func;
  int len;

  sd->buff = NULL;
  sd->len = 0;
  sd->op = op;
  fprintf(stderr, "Command:%d:%s: ", op, sd->str_tab[op]);
  func = sd->fun_tab[op];

  func(sd, count, buf);
  if ((len = sd->len) >= 0) {
    fprintf(stderr, "ok\r\n");
    (*res) = sd->buff;
    return len;
  } else {
    fprintf(stderr, "error\r\n");
    *res = 0;
    return -1;
  }
}

void sdl_send(sdl_data *sd, int len)
{
  if (sd->buff == NULL) {
    fprintf(stderr, "ESDL INTERNAL ERROR: sdl_send in %s sent NULL buffer: %d\r\n",
	    sd->str_tab[sd->op], len);
    abort();
  }
  if (len > sd->len) {
    fprintf(stderr, "ESDL INTERNAL ERROR: sdl_send in %s allocated %d sent %d\r\n",
	    sd->str_tab[sd->op], sd->len, len);
    abort();
  }

  /* Workaround that driver_control doesn't check length */
  ((ErlDrvBinary *) sd->buff)->orig_size = len;
  sd->len = len;
}

char* sdl_getbuff(sdl_data *sd, int size)
{  
  ErlDrvBinary* bin;
  sd->len = size;  
  bin = driver_alloc_binary(size); 
  sd->buff = bin;
  /* And return the pointer to the bytes */
  return bin->orig_bytes;
}

char* sdl_get_temp_buff(sdl_data* sd, int size)
{
  if (size > TEMP_BINARY_SIZE) {
    return sdl_getbuff(sd, size);
  } else {
    ErlDrvBinary* bin = (ErlDrvBinary *) sd->temp_bin;
    driver_binary_inc_refc(bin);
    sd->buff = bin;
    sd->len = size;
    return bin->orig_bytes;
  }
}

void
sdl_util_debug(sdl_data *sd, int len, char* bp)
{
  if (*bp) {
    sdl_driver_entry.control = sdl_driver_debug_control;
  } else {
    sdl_driver_entry.control = sdl_driver_control;
  }
}

static void
standard_outputv(ErlDrvData drv_data, ErlIOVec* ev)
{
  sdl_data* sd = (sdl_data *) drv_data;
  ErlDrvBinary* bin;

  if (ev->vsize == 2) {
    int i = sd->next_bin;

    sd->bin[i].base = ev->iov[1].iov_base;
    sd->bin[i].size = ev->iov[1].iov_len;
    bin = ev->binv[1];
    driver_binary_inc_refc(bin); /* Otherwise it could get deallocated */
    sd->bin[i].bin = bin;
    sd->next_bin++;
  }
}

void
sdl_free_binaries(sdl_data* sd)
{
  int i;
  
  for (i = sd->next_bin - 1; i >= 0; i--) {
    driver_free_binary(sd->bin[i].bin);
  }
  sd->next_bin = 0;
}

/*
 *  Copyright (c) 2008 Aur Saraf
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 *     $Id$
 */
/* 
 * sdl_gfx functions
 */

#include <string.h>
#include <stdlib.h>
#include "esdl.h"

#include <SDL/SDL_gfxPrimitives.h>

void es_pixelColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_pixelRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_hlineColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_hlineRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_vlineColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_vlineRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_rectangleColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_rectangleRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_boxColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_boxRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_lineColor(sdl_data *sd, int len, char *bp) {
   char *start;  
   int sendlen;
   char res;
   SDL_Surface *sptr;
   Uint16 x1, y1, x2, y2;
   Uint32 color;

   POPGLPTR(sptr, bp);
   
   x1 = get16be(bp);
   y1 = get16be(bp);
   x2 = get16be(bp);
   y2 = get16be(bp);

   color = get32be(bp);

   res = lineColor(sptr, x1, y1, x2, y2, color);
   
   bp = start = sdl_get_temp_buff(sd, 1);
   put8(bp, res);
   sendlen = bp - start;
   sdl_send(sd, sendlen);
}

void es_lineRGBA(sdl_data *sd, int len, char *bp) {
   char *start;  
   int sendlen;
   char res;
   SDL_Surface *sptr;
   Uint16 x1, y1, x2, y2;
   Uint8 r, g, b, a;

   POPGLPTR(sptr, bp);
   
   x1 = get16be(bp);
   y1 = get16be(bp);
   x2 = get16be(bp);
   y2 = get16be(bp);

   r = get8(bp);
   g = get8(bp);
   b = get8(bp);
   a = get8(bp);

   res = lineRGBA(sptr, x1, y1, x2, y2, r, g, b, a);
   
   bp = start = sdl_get_temp_buff(sd, 1);
   put8(bp, res);
   sendlen = bp - start;
   sdl_send(sd, sendlen);
}

void es_aalineColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aalineRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_circleColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_circleRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_arcColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_arcRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aacircleColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aacircleRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledCircleColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledCircleRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_ellipseColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_ellipseRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aaellipseColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aaellipseRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledEllipseColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledEllipseRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_pieColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_pieRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledPieColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledPieRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_trigonColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_trigonRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aatrigonColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aatrigonRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledTrigonColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledTrigonRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_polygonColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_polygonRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aapolygonColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_aapolygonRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledPolygonColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_filledPolygonRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_texturedPolygon(sdl_data *sd, int len, char *bp) {
  error();
}

void es_texturedPolygonMT(sdl_data *sd, int len, char *bp) {
  error();
}

void es_bezierColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_bezierRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_characterColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_characterRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_stringColor(sdl_data *sd, int len, char *bp) {
  error();
}

void es_stringRGBA(sdl_data *sd, int len, char *bp) {
  error();
}

void es_gfxPrimitivesSetFont(sdl_data *sd, int len, char *bp) {
  error();
}

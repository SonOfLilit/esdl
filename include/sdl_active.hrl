%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: sdl_active.hrl,v 1.1 2004/03/30 07:50:46 bjorng Exp $
%%
%%%----------------------------------------------------------------------
%%% File    : sdl_active.hrl
%%% Author  : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose : Active Macros
%%% Created : 12 Jul 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%%----------------------------------------------------------------------

-define(SDL_APPMOUSEFOCUS,	16#01). %/* The app has mouse coverage */
-define(SDL_APPINPUTFOCUS,	16#02). %/* The app has input focus */
-define(SDL_APPACTIVE,		16#04). %/* The application is active */

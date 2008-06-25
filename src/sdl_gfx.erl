%%  Copyright (c) 2008 Aur Saraf
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id$
%%
%%%----------------------------------------------------------------------
%%% File    : sdl_gfx__funcs.hrl
%%% Author  : Aur Saraf <sonoflilit@gmail.com>
%%% Purpose : 
%%% Created : 26 April 2008 by Aur Saraf <sonoflilit@gmail.com>
%%%----------------------------------------------------------------------

-module(sdl_gfx).

-include("sdl_gfx.hrl").
-include("sdl_gfx_funcs.hrl").
-include("sdl_video.hrl").
-include("sdl_util.hrl").

-export([
	 pixelColor/0,
	 pixelRGBA/0,
	 hlineColor/0,
	 hlineRGBA/0,
	 vlineColor/0,
	 vlineRGBA/0,
	 rectangleColor/0,
	 rectangleRGBA/0,
	 boxColor/0,
	 boxRGBA/0,
	 lineColor/6,
	 lineRGBA/9,
	 aalineColor/0,
	 aalineRGBA/0,
	 circleColor/0,
	 circleRGBA/0,
	 arcColor/0,
	 arcRGBA/0,
	 aacircleColor/0,
	 aacircleRGBA/0,
	 filledCircleColor/0,
	 filledCircleRGBA/0,
	 ellipseColor/0,
	 ellipseRGBA/0,
	 aaellipseColor/0,
	 aaellipseRGBA/0,
	 filledEllipseColor/0,
	 filledEllipseRGBA/0,
	 pieColor/0,
	 pieRGBA/0,
	 filledPieColor/0,
	 filledPieRGBA/0,
	 trigonColor/0,
	 trigonRGBA/0,
	 aatrigonColor/0,
	 aatrigonRGBA/0,
	 filledTrigonColor/0,
	 filledTrigonRGBA/0,
	 polygonColor/0,
	 polygonRGBA/0,
	 aapolygonColor/0,
	 aapolygonRGBA/0,
	 filledPolygonColor/0,
	 filledPolygonRGBA/0,
	 texturedPolygon/0,
	 texturedPolygonMT/0,
	 bezierColor/0,
	 bezierRGBA/0,
	 characterColor/0,
	 characterRGBA/0,
	 stringColor/0,
	 stringRGBA/0,
	 gfxPrimitivesSetFont/0]).

%% Imports
-import(sdl, [call/2,cast/2]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ERL_SDL API

%% Func: pixelColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
pixelColor() ->
    not_implemented.

%% Func: pixelRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
pixelRGBA() ->
    not_implemented.

%% Func: hlineColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
hlineColor() ->
    not_implemented.

%% Func: hlineRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
hlineRGBA() ->
    not_implemented.

%% Func: vlineColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
vlineColor() ->
    not_implemented.

%% Func: vlineRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
vlineRGBA() ->
    not_implemented.

%% Func: rectangleColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
rectangleColor() ->
    not_implemented.

%% Func: rectangleRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
rectangleRGBA() ->
    not_implemented.

%% Func: boxColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
boxColor() ->
    not_implemented.

%% Func: boxRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
boxRGBA() ->
    not_implemented.

%% Func: lineColor
%% Args: SurfaceRef, X1, Y1, X2, Y2, Color
%% Returns: 
%% C-API func: int aalineColor(SDL_Surface * dst, Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint32 color)
%% Desc: Draws a line
lineColor(S, X1, Y1, X2, Y2, Color)
  when record(S, sdl_surface) ->
    lineColor(S#sdl_surface.self, X1, Y1, X2, Y2, Color);
lineColor({surfacep, SRef}, X1, Y1, X2, Y2, Color) ->
    call(?SDL_LineColor, <<SRef:?_PTR, X1:16, Y1:16, X2:16, Y2:16, Color:32>>).

%% Func: lineRGBA
%% Args: SurfaceRef, X1, Y1, X2, Y2, Color, R, G, B, A
%% Returns: 
%% C-API func: aalineRGBA(SDL_Surface * dst, Sint16 x1, Sint16 y1,
%%                        Sint16 x2, Sint16 y2, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
%% Desc: Draws a line
lineRGBA(S, X1, Y1, X2, Y2, R, G, B, A)
  when record(S, sdl_surface) ->
    lineRGBA(S#sdl_surface.self, X1, Y1, X2, Y2, R, G, B, A);
lineRGBA({surfacep, SRef}, X1, Y1, X2, Y2, R, G, B, A) ->
    call(?SDL_LineRGBA, <<SRef:?_PTR, X1:16, Y1:16, X2:16, Y2:16, R:8, G:8, B:8, A:8>>).

%% Func: aalineColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aalineColor() ->
    not_implemented.

%% Func: aalineRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aalineRGBA() ->
    not_implemented.

%% Func: circleColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
circleColor() ->
    not_implemented.

%% Func: circleRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
circleRGBA() ->
    not_implemented.

%% Func: arcColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
arcColor() ->
    not_implemented.

%% Func: arcRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
arcRGBA() ->
    not_implemented.

%% Func: aacircleColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aacircleColor() ->
    not_implemented.

%% Func: aacircleRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aacircleRGBA() ->
    not_implemented.

%% Func: filledCircleColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledCircleColor() ->
    not_implemented.

%% Func: filledCircleRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledCircleRGBA() ->
    not_implemented.

%% Func: ellipseColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
ellipseColor() ->
    not_implemented.

%% Func: ellipseRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
ellipseRGBA() ->
    not_implemented.

%% Func: aaellipseColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aaellipseColor() ->
    not_implemented.

%% Func: aaellipseRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aaellipseRGBA() ->
    not_implemented.

%% Func: filledEllipseColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledEllipseColor() ->
    not_implemented.

%% Func: filledEllipseRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledEllipseRGBA() ->
    not_implemented.

%% Func: pieColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
pieColor() ->
    not_implemented.

%% Func: pieRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
pieRGBA() ->
    not_implemented.

%% Func: filledPieColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledPieColor() ->
    not_implemented.

%% Func: filledPieRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledPieRGBA() ->
    not_implemented.

%% Func: trigonColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
trigonColor() ->
    not_implemented.

%% Func: trigonRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
trigonRGBA() ->
    not_implemented.

%% Func: aatrigonColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aatrigonColor() ->
    not_implemented.

%% Func: aatrigonRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aatrigonRGBA() ->
    not_implemented.

%% Func: filledTrigonColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledTrigonColor() ->
    not_implemented.

%% Func: filledTrigonRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledTrigonRGBA() ->
    not_implemented.

%% Func: polygonColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
polygonColor() ->
    not_implemented.

%% Func: polygonRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
polygonRGBA() ->
    not_implemented.

%% Func: aapolygonColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aapolygonColor() ->
    not_implemented.

%% Func: aapolygonRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
aapolygonRGBA() ->
    not_implemented.

%% Func: filledPolygonColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledPolygonColor() ->
    not_implemented.

%% Func: filledPolygonRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
filledPolygonRGBA() ->
    not_implemented.

%% Func: texturedPolygon
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
texturedPolygon() ->
    not_implemented.

%% Func: texturedPolygonMT
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
texturedPolygonMT() ->
    not_implemented.

%% Func: bezierColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
bezierColor() ->
    not_implemented.

%% Func: bezierRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
bezierRGBA() ->
    not_implemented.

%% Func: characterColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
characterColor() ->
    not_implemented.

%% Func: characterRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
characterRGBA() ->
    not_implemented.

%% Func: stringColor
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
stringColor() ->
    not_implemented.

%% Func: stringRGBA
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
stringRGBA() ->
    not_implemented.

%% Func: gfxPrimitivesSetFont
%% Args: 
%% Returns: 
%% C-API func: 
%% Desc: 
gfxPrimitivesSetFont() ->
    not_implemented.

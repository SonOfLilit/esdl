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

%%% Functions  
-include("esdl.hrl").

-define(SDL_PixelColorFunc, ?SDL_GFX_H + 1).
-define(SDL_PixelRGBAFunc, ?SDL_PixelColorFunc + 1).
-define(SDL_HlineColorFunc, ?SDL_PixelRGBAFunc + 1).
-define(SDL_HlineRGBAFunc, ?SDL_HlineColorFunc + 1).
-define(SDL_VlineColorFunc, ?SDL_HlineRGBAFunc + 1).
-define(VlineRGBAFunc, ?SDL_VlineColorFunc + 1).
-define(SDL_RectangleColorFunc, ?VlineRGBAFunc + 1).
-define(SDL_RectangleRGBAFunc, ?SDL_RectangleColorFunc + 1).
-define(SDL_BoxColorFunc, ?SDL_RectangleRGBAFunc + 1).
-define(SDL_BoxRGBAFunc, ?SDL_BoxColorFunc + 1).
-define(SDL_LineColorFunc, ?SDL_BoxRGBAFunc + 1).
-define(SDL_LineRGBAFunc, ?SDL_LineColorFunc + 1).
-define(SDL_AalineColorFunc, ?SDL_LineRGBAFunc + 1).
-define(SDL_AalineRGBAFunc, ?SDL_AalineColorFunc + 1).
-define(SDL_CircleColorFunc, ?SDL_AalineRGBAFunc + 1).
-define(SDL_CircleRGBAFunc, ?SDL_CircleColorFunc + 1).
-define(SDL_ArcColorFunc, ?SDL_CircleRGBAFunc + 1).
-define(SDL_ArcRGBAFunc, ?SDL_ArcColorFunc + 1).
-define(SDL_AacircleColorFunc, ?SDL_ArcRGBAFunc + 1).
-define(SDL_AacircleRGBAFunc, ?SDL_AacircleColorFunc + 1).
-define(SDL_FilledCircleColorFunc, ?SDL_AacircleRGBAFunc + 1).
-define(SDL_FilledCircleRGBAFunc, ?SDL_FilledCircleColorFunc + 1).
-define(SDL_EllipseColorFunc, ?SDL_FilledCircleRGBAFunc + 1).
-define(SDL_EllipseRGBAFunc, ?SDL_EllipseColorFunc + 1).
-define(SDL_AaellipseColorFunc, ?SDL_EllipseRGBAFunc + 1).
-define(SDL_AaellipseRGBAFunc, ?SDL_AaellipseColorFunc + 1).
-define(SDL_FilledEllipseColorFunc, ?SDL_AaellipseRGBAFunc + 1).
-define(SDL_FilledEllipseRGBAFunc, ?SDL_FilledEllipseColorFunc + 1).
-define(SDL_PieColorFunc, ?SDL_FilledEllipseRGBAFunc + 1).
-define(SDL_PieRGBAFunc, ?SDL_PieColorFunc + 1).
-define(SDL_FilledPieColorFunc, ?SDL_PieRGBAFunc + 1).
-define(SDL_FilledPieRGBAFunc, ?SDL_FilledPieColorFunc + 1).
-define(SDL_TrigonColorFunc, ?SDL_FilledPieRGBAFunc + 1).
-define(SDL_TrigonRGBAFunc, ?SDL_TrigonColorFunc + 1).
-define(SDL_AatrigonColorFunc, ?SDL_TrigonRGBAFunc + 1).
-define(SDL_AatrigonRGBAFunc, ?SDL_AatrigonColorFunc + 1).
-define(SDL_FilledTrigonColorFunc, ?SDL_AatrigonRGBAFunc + 1).
-define(SDL_FilledTrigonRGBAFunc, ?SDL_FilledTrigonColorFunc + 1).
-define(SDL_PolygonColorFunc, ?SDL_FilledTrigonRGBAFunc + 1).
-define(SDL_PolygonRGBAFunc, ?SDL_PolygonColorFunc + 1).
-define(SDL_AapolygonColorFunc, ?SDL_PolygonRGBAFunc + 1).
-define(SDL_AapolygonRGBAFunc, ?SDL_AapolygonColorFunc + 1).
-define(SDL_FilledPolygonColorFunc, ?SDL_AapolygonRGBAFunc + 1).
-define(SDL_FilledPolygonRGBAFunc, ?SDL_FilledPolygonColorFunc + 1).
-define(SDL_TexturedPolygonFunc, ?SDL_FilledPolygonRGBAFunc + 1).
-define(SDL_TexturedPolygonMTFunc, ?SDL_TexturedPolygonFunc + 1).
-define(SDL_BezierColorFunc, ?SDL_TexturedPolygonMTFunc + 1).
-define(SDL_BezierRGBAFunc, ?SDL_BezierColorFunc + 1).
-define(SDL_CharacterColorFunc, ?SDL_BezierRGBAFunc + 1).
-define(SDL_CharacterRGBAFunc, ?SDL_CharacterColorFunc + 1).
-define(SDL_StringColorFunc, ?SDL_CharacterRGBAFunc + 1).
-define(SDL_StringRGBAFunc, ?SDL_StringColorFunc + 1).
-define(SDL_GfxPrimitivesSetFontFunc, ?SDL_StringRGBAFunc + 1).


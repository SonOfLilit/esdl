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

-define(SDL_PixelColor, ?SDL_GFX_H + 1).
-define(SDL_PixelRGBA, ?SDL_PixelColor + 1).
-define(SDL_HlineColor, ?SDL_PixelRGBA + 1).
-define(SDL_HlineRGBA, ?SDL_HlineColor + 1).
-define(SDL_VlineColor, ?SDL_HlineRGBA + 1).
-define(SDL_VlineRGBA, ?SDL_VlineColor + 1).
-define(SDL_RectangleColor, ?SDL_VlineRGBA + 1).
-define(SDL_RectangleRGBA, ?SDL_RectangleColor + 1).
-define(SDL_BoxColor, ?SDL_RectangleRGBA + 1).
-define(SDL_BoxRGBA, ?SDL_BoxColor + 1).
-define(SDL_LineColor, ?SDL_BoxRGBA + 1).
-define(SDL_LineRGBA, ?SDL_LineColor + 1).
-define(SDL_AalineColor, ?SDL_LineRGBA + 1).
-define(SDL_AalineRGBA, ?SDL_AalineColor + 1).
-define(SDL_CircleColor, ?SDL_AalineRGBA + 1).
-define(SDL_CircleRGBA, ?SDL_CircleColor + 1).
-define(SDL_ArcColor, ?SDL_CircleRGBA + 1).
-define(SDL_ArcRGBA, ?SDL_ArcColor + 1).
-define(SDL_AacircleColor, ?SDL_ArcRGBA + 1).
-define(SDL_AacircleRGBA, ?SDL_AacircleColor + 1).
-define(SDL_FilledCircleColor, ?SDL_AacircleRGBA + 1).
-define(SDL_FilledCircleRGBA, ?SDL_FilledCircleColor + 1).
-define(SDL_EllipseColor, ?SDL_FilledCircleRGBA + 1).
-define(SDL_EllipseRGBA, ?SDL_EllipseColor + 1).
-define(SDL_AaellipseColor, ?SDL_EllipseRGBA + 1).
-define(SDL_AaellipseRGBA, ?SDL_AaellipseColor + 1).
-define(SDL_FilledEllipseColor, ?SDL_AaellipseRGBA + 1).
-define(SDL_FilledEllipseRGBA, ?SDL_FilledEllipseColor + 1).
-define(SDL_PieColor, ?SDL_FilledEllipseRGBA + 1).
-define(SDL_PieRGBA, ?SDL_PieColor + 1).
-define(SDL_FilledPieColor, ?SDL_PieRGBA + 1).
-define(SDL_FilledPieRGBA, ?SDL_FilledPieColor + 1).
-define(SDL_TrigonColor, ?SDL_FilledPieRGBA + 1).
-define(SDL_TrigonRGBA, ?SDL_TrigonColor + 1).
-define(SDL_AatrigonColor, ?SDL_TrigonRGBA + 1).
-define(SDL_AatrigonRGBA, ?SDL_AatrigonColor + 1).
-define(SDL_FilledTrigonColor, ?SDL_AatrigonRGBA + 1).
-define(SDL_FilledTrigonRGBA, ?SDL_FilledTrigonColor + 1).
-define(SDL_PolygonColor, ?SDL_FilledTrigonRGBA + 1).
-define(SDL_PolygonRGBA, ?SDL_PolygonColor + 1).
-define(SDL_AapolygonColor, ?SDL_PolygonRGBA + 1).
-define(SDL_AapolygonRGBA, ?SDL_AapolygonColor + 1).
-define(SDL_FilledPolygonColor, ?SDL_AapolygonRGBA + 1).
-define(SDL_FilledPolygonRGBA, ?SDL_FilledPolygonColor + 1).
-define(SDL_TexturedPolygon, ?SDL_FilledPolygonRGBA + 1).
-define(SDL_TexturedPolygonMT, ?SDL_TexturedPolygon + 1).
-define(SDL_BezierColor, ?SDL_TexturedPolygonMT + 1).
-define(SDL_BezierRGBA, ?SDL_BezierColor + 1).
-define(SDL_CharacterColor, ?SDL_BezierRGBA + 1).
-define(SDL_CharacterRGBA, ?SDL_CharacterColor + 1).
-define(SDL_StringColor, ?SDL_CharacterRGBA + 1).
-define(SDL_StringRGBA, ?SDL_StringColor + 1).
-define(SDL_GfxPrimitivesSetFont, ?SDL_StringRGBA + 1).


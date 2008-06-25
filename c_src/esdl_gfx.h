/*  
 *  Copyright (c) 2008 Aur Saraf
 *  See the file "license.terms" for information on usage and redistribution
 *  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 * 
 * 
 *     $Id$
 */
/* Defines the SDL_gfx functions */ 
/* Used for switching          */

#ifdef __cplusplus
extern "C" {
#endif 

#define SDL_PixelColorFunc    SDL_GFX_H + 1
void es_pixelColor(sdl_data *, int, char *);
#define SDL_PixelRGBAFunc    SDL_PixelColorFunc + 1
void es_pixelRGBA(sdl_data *, int, char *);
#define SDL_HlineColorFunc    SDL_PixelRGBAFunc + 1
void es_hlineColor(sdl_data *, int, char *);
#define SDL_HlineRGBAFunc    SDL_HlineColorFunc + 1
void es_hlineRGBA(sdl_data *, int, char *);
#define SDL_VlineColorFunc    SDL_HlineRGBAFunc + 1
void es_vlineColor(sdl_data *, int, char *);
#define SDL_VlineRGBAFunc    SDL_VlineColorFunc + 1
void es_vlineRGBA(sdl_data *, int, char *);
#define SDL_RectangleColorFunc    SDL_VlineRGBAFunc + 1
void es_rectangleColor(sdl_data *, int, char *);
#define SDL_RectangleRGBAFunc    SDL_RectangleColorFunc + 1
void es_rectangleRGBA(sdl_data *, int, char *);
#define SDL_BoxColorFunc    SDL_RectangleRGBAFunc + 1
void es_boxColor(sdl_data *, int, char *);
#define SDL_BoxRGBAFunc SDL_BoxColorFunc + 1
void es_boxRGBA(sdl_data *, int, char *);
#define SDL_LineColorFunc SDL_BoxRGBAFunc + 1
void es_lineColor(sdl_data *, int, char *);
#define SDL_LineRGBAFunc SDL_LineColorFunc + 1
void es_lineRGBA(sdl_data *, int, char *);
#define SDL_AalineColorFunc SDL_LineRGBAFunc + 1
void es_aalineColor(sdl_data *, int, char *);
#define SDL_AalineRGBAFunc SDL_AalineColorFunc + 1
void es_aalineRGBA(sdl_data *, int, char *);
#define SDL_CircleColorFunc SDL_AalineRGBAFunc + 1
void es_circleColor(sdl_data *, int, char *);
#define SDL_CircleRGBAFunc SDL_CircleColorFunc + 1
void es_circleRGBA(sdl_data *, int, char *);
#define SDL_ArcColorFunc SDL_CircleRGBAFunc + 1
void es_arcColor(sdl_data *, int, char *);
#define SDL_ArcRGBAFunc SDL_ArcColorFunc + 1
void es_arcRGBA(sdl_data *, int, char *);
#define SDL_AacircleColorFunc SDL_ArcRGBAFunc + 1
void es_aacircleColor(sdl_data *, int, char *);
#define SDL_AacircleRGBAFunc SDL_AacircleColorFunc + 1
void es_aacircleRGBA(sdl_data *, int, char *);
#define SDL_FilledCircleColorFunc SDL_AacircleRGBAFunc + 1
void es_filledCircleColor(sdl_data *, int, char *);
#define SDL_FilledCircleRGBAFunc SDL_FilledCircleColorFunc + 1
void es_filledCircleRGBA(sdl_data *, int, char *);
#define SDL_EllipseColorFunc SDL_FilledCircleRGBAFunc + 1
void es_ellipseColor(sdl_data *, int, char *);
#define SDL_EllipseRGBAFunc SDL_EllipseColorFunc + 1
void es_ellipseRGBA(sdl_data *, int, char *);
#define SDL_AaellipseColorFunc SDL_EllipseRGBAFunc + 1
void es_aaellipseColor(sdl_data *, int, char *);
#define SDL_AaellipseRGBAFunc SDL_AaellipseColorFunc + 1
void es_aaellipseRGBA(sdl_data *, int, char *);
#define SDL_FilledEllipseColorFunc SDL_AaellipseRGBAFunc + 1
void es_filledEllipseColor(sdl_data *, int, char *);
#define SDL_FilledEllipseRGBAFunc SDL_FilledEllipseColorFunc + 1
void es_filledEllipseRGBA(sdl_data *, int, char *);
#define SDL_PieColorFunc SDL_FilledEllipseRGBAFunc + 1
void es_pieColor(sdl_data *, int, char *);
#define SDL_PieRGBAFunc SDL_PieColorFunc + 1
void es_pieRGBA(sdl_data *, int, char *);
#define SDL_FilledPieColorFunc SDL_PieRGBAFunc + 1
void es_filledPieColor(sdl_data *, int, char *);
#define SDL_FilledPieRGBAFunc SDL_FilledPieColorFunc + 1
void es_filledPieRGBA(sdl_data *, int, char *);
#define SDL_TrigonColorFunc SDL_FilledPieRGBAFunc + 1
void es_trigonColor(sdl_data *, int, char *);
#define SDL_TrigonRGBAFunc SDL_TrigonColorFunc + 1
void es_trigonRGBA(sdl_data *, int, char *);
#define SDL_AatrigonColorFunc SDL_TrigonRGBAFunc + 1
void es_aatrigonColor(sdl_data *, int, char *);
#define SDL_AatrigonRGBAFunc SDL_AatrigonColorFunc + 1
void es_aatrigonRGBA(sdl_data *, int, char *);
#define SDL_FilledTrigonColorFunc SDL_AatrigonRGBAFunc + 1
void es_filledTrigonColor(sdl_data *, int, char *);
#define SDL_FilledTrigonRGBAFunc SDL_FilledTrigonColorFunc + 1
void es_filledTrigonRGBA(sdl_data *, int, char *);
#define SDL_PolygonColorFunc SDL_FilledTrigonRGBAFunc + 1
void es_polygonColor(sdl_data *, int, char *);
#define SDL_PolygonRGBAFunc SDL_PolygonColorFunc + 1
void es_polygonRGBA(sdl_data *, int, char *);
#define SDL_AapolygonColorFunc SDL_PolygonRGBAFunc + 1
void es_aapolygonColor(sdl_data *, int, char *);
#define SDL_AapolygonRGBAFunc SDL_AapolygonColorFunc + 1
void es_aapolygonRGBA(sdl_data *, int, char *);
#define SDL_FilledPolygonColorFunc SDL_AapolygonRGBAFunc + 1
void es_filledPolygonColor(sdl_data *, int, char *);
#define SDL_FilledPolygonRGBAFunc SDL_FilledPolygonColorFunc + 1
void es_filledPolygonRGBA(sdl_data *, int, char *);
#define SDL_TexturedPolygonFunc SDL_FilledPolygonRGBAFunc + 1
void es_texturedPolygon(sdl_data *, int, char *);
#define SDL_TexturedPolygonMTFunc SDL_TexturedPolygonFunc + 1
void es_texturedPolygonMT(sdl_data *, int, char *);
#define SDL_BezierColorFunc SDL_TexturedPolygonMTFunc + 1
void es_bezierColor(sdl_data *, int, char *);
#define SDL_BezierRGBAFunc SDL_BezierColorFunc + 1
void es_bezierRGBA(sdl_data *, int, char *);
#define SDL_CharacterColorFunc SDL_BezierRGBAFunc + 1
void es_characterColor(sdl_data *, int, char *);
#define SDL_CharacterRGBAFunc SDL_CharacterColorFunc + 1
void es_characterRGBA(sdl_data *, int, char *);
#define SDL_StringColorFunc SDL_CharacterRGBAFunc + 1
void es_stringColor(sdl_data *, int, char *);
#define SDL_StringRGBAFunc SDL_StringColorFunc + 1
void es_stringRGBA(sdl_data *, int, char *);
#define SDL_GfxPrimitivesSetFontFunc SDL_StringRGBAFunc + 1
void es_gfxPrimitivesSetFont(sdl_data *, int, char *);

#ifdef __cplusplus
}
#endif 

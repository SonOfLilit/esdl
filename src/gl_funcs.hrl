%%
%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: gl_funcs.hrl,v 1.1 2004/03/30 07:46:20 bjorng Exp $
%%
-define(glAccum, ?SDL_OPENGL_HRL + 0).
-define(glAlphaFunc, ?SDL_OPENGL_HRL + 1).
-define(glAreTexturesResident, ?SDL_OPENGL_HRL + 2).
-define(glArrayElement, ?SDL_OPENGL_HRL + 3).
-define(glBegin, ?SDL_OPENGL_HRL + 4).
-define(glBindTexture, ?SDL_OPENGL_HRL + 5).
-define(glBitmap, ?SDL_OPENGL_HRL + 6).
-define(glBlendFunc, ?SDL_OPENGL_HRL + 7).
-define(glCallList, ?SDL_OPENGL_HRL + 8).
-define(glCallLists, ?SDL_OPENGL_HRL + 9).
-define(glClear, ?SDL_OPENGL_HRL + 10).
-define(glClearAccum, ?SDL_OPENGL_HRL + 11).
-define(glClearColor, ?SDL_OPENGL_HRL + 12).
-define(glClearDepth, ?SDL_OPENGL_HRL + 13).
-define(glClearIndex, ?SDL_OPENGL_HRL + 14).
-define(glClearStencil, ?SDL_OPENGL_HRL + 15).
-define(glClipPlane, ?SDL_OPENGL_HRL + 16).
-define(glColor3bv, ?SDL_OPENGL_HRL + 17).
-define(glColor3dv, ?SDL_OPENGL_HRL + 18).
-define(glColor3fv, ?SDL_OPENGL_HRL + 19).
-define(glColor3iv, ?SDL_OPENGL_HRL + 20).
-define(glColor3sv, ?SDL_OPENGL_HRL + 21).
-define(glColor3ubv, ?SDL_OPENGL_HRL + 22).
-define(glColor3uiv, ?SDL_OPENGL_HRL + 23).
-define(glColor3usv, ?SDL_OPENGL_HRL + 24).
-define(glColor4bv, ?SDL_OPENGL_HRL + 25).
-define(glColor4dv, ?SDL_OPENGL_HRL + 26).
-define(glColor4fv, ?SDL_OPENGL_HRL + 27).
-define(glColor4iv, ?SDL_OPENGL_HRL + 28).
-define(glColor4sv, ?SDL_OPENGL_HRL + 29).
-define(glColor4ubv, ?SDL_OPENGL_HRL + 30).
-define(glColor4uiv, ?SDL_OPENGL_HRL + 31).
-define(glColor4usv, ?SDL_OPENGL_HRL + 32).
-define(glColorMask, ?SDL_OPENGL_HRL + 33).
-define(glColorMaterial, ?SDL_OPENGL_HRL + 34).
-define(glColorPointer, ?SDL_OPENGL_HRL + 35).
-define(glCopyPixels, ?SDL_OPENGL_HRL + 36).
-define(glCopyTexImage1D, ?SDL_OPENGL_HRL + 37).
-define(glCopyTexImage2D, ?SDL_OPENGL_HRL + 38).
-define(glCopyTexSubImage1D, ?SDL_OPENGL_HRL + 39).
-define(glCopyTexSubImage2D, ?SDL_OPENGL_HRL + 40).
-define(glCullFace, ?SDL_OPENGL_HRL + 41).
-define(glDeleteLists, ?SDL_OPENGL_HRL + 42).
-define(glDeleteTextures, ?SDL_OPENGL_HRL + 43).
-define(glDepthFunc, ?SDL_OPENGL_HRL + 44).
-define(glDepthMask, ?SDL_OPENGL_HRL + 45).
-define(glDepthRange, ?SDL_OPENGL_HRL + 46).
-define(glDisable, ?SDL_OPENGL_HRL + 47).
-define(glDisableClientState, ?SDL_OPENGL_HRL + 48).
-define(glDrawArrays, ?SDL_OPENGL_HRL + 49).
-define(glDrawBuffer, ?SDL_OPENGL_HRL + 50).
-define(glDrawElements, ?SDL_OPENGL_HRL + 51).
-define(glDrawPixels, ?SDL_OPENGL_HRL + 52).
-define(glEdgeFlag, ?SDL_OPENGL_HRL + 53).
-define(glEdgeFlagPointer, ?SDL_OPENGL_HRL + 54).
-define(glEdgeFlagv, ?SDL_OPENGL_HRL + 55).
-define(glEnable, ?SDL_OPENGL_HRL + 56).
-define(glEnableClientState, ?SDL_OPENGL_HRL + 57).
-define(glEnd, ?SDL_OPENGL_HRL + 58).
-define(glEndList, ?SDL_OPENGL_HRL + 59).
-define(glEvalCoord1dv, ?SDL_OPENGL_HRL + 60).
-define(glEvalCoord1fv, ?SDL_OPENGL_HRL + 61).
-define(glEvalCoord2dv, ?SDL_OPENGL_HRL + 62).
-define(glEvalCoord2fv, ?SDL_OPENGL_HRL + 63).
-define(glEvalMesh1, ?SDL_OPENGL_HRL + 64).
-define(glEvalMesh2, ?SDL_OPENGL_HRL + 65).
-define(glEvalPoint1, ?SDL_OPENGL_HRL + 66).
-define(glEvalPoint2, ?SDL_OPENGL_HRL + 67).
-define(glFeedbackBuffer, ?SDL_OPENGL_HRL + 68).
-define(glFinish, ?SDL_OPENGL_HRL + 69).
-define(glFlush, ?SDL_OPENGL_HRL + 70).
-define(glFogf, ?SDL_OPENGL_HRL + 71).
-define(glFogfv, ?SDL_OPENGL_HRL + 72).
-define(glFogi, ?SDL_OPENGL_HRL + 73).
-define(glFogiv, ?SDL_OPENGL_HRL + 74).
-define(glFrontFace, ?SDL_OPENGL_HRL + 75).
-define(glFrustum, ?SDL_OPENGL_HRL + 76).
-define(glGenLists, ?SDL_OPENGL_HRL + 77).
-define(glGenTextures, ?SDL_OPENGL_HRL + 78).
-define(glGetBooleanv, ?SDL_OPENGL_HRL + 79).
-define(glGetClipPlane, ?SDL_OPENGL_HRL + 80).
-define(glGetDoublev, ?SDL_OPENGL_HRL + 81).
-define(glGetError, ?SDL_OPENGL_HRL + 82).
-define(glGetFloatv, ?SDL_OPENGL_HRL + 83).
-define(glGetIntegerv, ?SDL_OPENGL_HRL + 84).
-define(glGetLightfv, ?SDL_OPENGL_HRL + 85).
-define(glGetLightiv, ?SDL_OPENGL_HRL + 86).
-define(glGetMapdv, ?SDL_OPENGL_HRL + 87).
-define(glGetMapfv, ?SDL_OPENGL_HRL + 88).
-define(glGetMapiv, ?SDL_OPENGL_HRL + 89).
-define(glGetMaterialfv, ?SDL_OPENGL_HRL + 90).
-define(glGetMaterialiv, ?SDL_OPENGL_HRL + 91).
-define(glGetPixelMapfv, ?SDL_OPENGL_HRL + 92).
-define(glGetPixelMapuiv, ?SDL_OPENGL_HRL + 93).
-define(glGetPixelMapusv, ?SDL_OPENGL_HRL + 94).
-define(glGetPointerv, ?SDL_OPENGL_HRL + 95).
-define(glGetPolygonStipple, ?SDL_OPENGL_HRL + 96).
-define(glGetString, ?SDL_OPENGL_HRL + 97).
-define(glGetTexEnvfv, ?SDL_OPENGL_HRL + 98).
-define(glGetTexEnviv, ?SDL_OPENGL_HRL + 99).
-define(glGetTexGendv, ?SDL_OPENGL_HRL + 100).
-define(glGetTexGenfv, ?SDL_OPENGL_HRL + 101).
-define(glGetTexGeniv, ?SDL_OPENGL_HRL + 102).
-define(glGetTexImage, ?SDL_OPENGL_HRL + 103).
-define(glGetTexLevelParameterfv, ?SDL_OPENGL_HRL + 104).
-define(glGetTexLevelParameteriv, ?SDL_OPENGL_HRL + 105).
-define(glGetTexParameterfv, ?SDL_OPENGL_HRL + 106).
-define(glGetTexParameteriv, ?SDL_OPENGL_HRL + 107).
-define(glHint, ?SDL_OPENGL_HRL + 108).
-define(glIndexMask, ?SDL_OPENGL_HRL + 109).
-define(glIndexPointer, ?SDL_OPENGL_HRL + 110).
-define(glIndexd, ?SDL_OPENGL_HRL + 111).
-define(glIndexdv, ?SDL_OPENGL_HRL + 112).
-define(glIndexf, ?SDL_OPENGL_HRL + 113).
-define(glIndexfv, ?SDL_OPENGL_HRL + 114).
-define(glIndexi, ?SDL_OPENGL_HRL + 115).
-define(glIndexiv, ?SDL_OPENGL_HRL + 116).
-define(glIndexs, ?SDL_OPENGL_HRL + 117).
-define(glIndexsv, ?SDL_OPENGL_HRL + 118).
-define(glIndexub, ?SDL_OPENGL_HRL + 119).
-define(glIndexubv, ?SDL_OPENGL_HRL + 120).
-define(glInitNames, ?SDL_OPENGL_HRL + 121).
-define(glInterleavedArrays, ?SDL_OPENGL_HRL + 122).
-define(glIsEnabled, ?SDL_OPENGL_HRL + 123).
-define(glIsList, ?SDL_OPENGL_HRL + 124).
-define(glIsTexture, ?SDL_OPENGL_HRL + 125).
-define(glLightModelf, ?SDL_OPENGL_HRL + 126).
-define(glLightModelfv, ?SDL_OPENGL_HRL + 127).
-define(glLightModeli, ?SDL_OPENGL_HRL + 128).
-define(glLightModeliv, ?SDL_OPENGL_HRL + 129).
-define(glLightf, ?SDL_OPENGL_HRL + 130).
-define(glLightfv, ?SDL_OPENGL_HRL + 131).
-define(glLighti, ?SDL_OPENGL_HRL + 132).
-define(glLightiv, ?SDL_OPENGL_HRL + 133).
-define(glLineStipple, ?SDL_OPENGL_HRL + 134).
-define(glLineWidth, ?SDL_OPENGL_HRL + 135).
-define(glListBase, ?SDL_OPENGL_HRL + 136).
-define(glLoadIdentity, ?SDL_OPENGL_HRL + 137).
-define(glLoadMatrixd, ?SDL_OPENGL_HRL + 138).
-define(glLoadMatrixf, ?SDL_OPENGL_HRL + 139).
-define(glLoadName, ?SDL_OPENGL_HRL + 140).
-define(glLogicOp, ?SDL_OPENGL_HRL + 141).
-define(glMap1d, ?SDL_OPENGL_HRL + 142).
-define(glMap1f, ?SDL_OPENGL_HRL + 143).
-define(glMap2d, ?SDL_OPENGL_HRL + 144).
-define(glMap2f, ?SDL_OPENGL_HRL + 145).
-define(glMapGrid1d, ?SDL_OPENGL_HRL + 146).
-define(glMapGrid1f, ?SDL_OPENGL_HRL + 147).
-define(glMapGrid2d, ?SDL_OPENGL_HRL + 148).
-define(glMapGrid2f, ?SDL_OPENGL_HRL + 149).
-define(glMaterialf, ?SDL_OPENGL_HRL + 150).
-define(glMaterialfv, ?SDL_OPENGL_HRL + 151).
-define(glMateriali, ?SDL_OPENGL_HRL + 152).
-define(glMaterialiv, ?SDL_OPENGL_HRL + 153).
-define(glMatrixMode, ?SDL_OPENGL_HRL + 154).
-define(glMultMatrixd, ?SDL_OPENGL_HRL + 155).
-define(glMultMatrixf, ?SDL_OPENGL_HRL + 156).
-define(glNewList, ?SDL_OPENGL_HRL + 157).
-define(glNormal3bv, ?SDL_OPENGL_HRL + 158).
-define(glNormal3dv, ?SDL_OPENGL_HRL + 159).
-define(glNormal3fv, ?SDL_OPENGL_HRL + 160).
-define(glNormal3iv, ?SDL_OPENGL_HRL + 161).
-define(glNormal3sv, ?SDL_OPENGL_HRL + 162).
-define(glNormalPointer, ?SDL_OPENGL_HRL + 163).
-define(glOrtho, ?SDL_OPENGL_HRL + 164).
-define(glPassThrough, ?SDL_OPENGL_HRL + 165).
-define(glPixelMapfv, ?SDL_OPENGL_HRL + 166).
-define(glPixelMapuiv, ?SDL_OPENGL_HRL + 167).
-define(glPixelMapusv, ?SDL_OPENGL_HRL + 168).
-define(glPixelStoref, ?SDL_OPENGL_HRL + 169).
-define(glPixelStorei, ?SDL_OPENGL_HRL + 170).
-define(glPixelTransferf, ?SDL_OPENGL_HRL + 171).
-define(glPixelTransferi, ?SDL_OPENGL_HRL + 172).
-define(glPixelZoom, ?SDL_OPENGL_HRL + 173).
-define(glPointSize, ?SDL_OPENGL_HRL + 174).
-define(glPolygonMode, ?SDL_OPENGL_HRL + 175).
-define(glPolygonOffset, ?SDL_OPENGL_HRL + 176).
-define(glPolygonStipple, ?SDL_OPENGL_HRL + 177).
-define(glPopAttrib, ?SDL_OPENGL_HRL + 178).
-define(glPopClientAttrib, ?SDL_OPENGL_HRL + 179).
-define(glPopMatrix, ?SDL_OPENGL_HRL + 180).
-define(glPopName, ?SDL_OPENGL_HRL + 181).
-define(glPrioritizeTextures, ?SDL_OPENGL_HRL + 182).
-define(glPushAttrib, ?SDL_OPENGL_HRL + 183).
-define(glPushClientAttrib, ?SDL_OPENGL_HRL + 184).
-define(glPushMatrix, ?SDL_OPENGL_HRL + 185).
-define(glPushName, ?SDL_OPENGL_HRL + 186).
-define(glRasterPos2dv, ?SDL_OPENGL_HRL + 187).
-define(glRasterPos2fv, ?SDL_OPENGL_HRL + 188).
-define(glRasterPos2iv, ?SDL_OPENGL_HRL + 189).
-define(glRasterPos2sv, ?SDL_OPENGL_HRL + 190).
-define(glRasterPos3dv, ?SDL_OPENGL_HRL + 191).
-define(glRasterPos3fv, ?SDL_OPENGL_HRL + 192).
-define(glRasterPos3iv, ?SDL_OPENGL_HRL + 193).
-define(glRasterPos3sv, ?SDL_OPENGL_HRL + 194).
-define(glRasterPos4dv, ?SDL_OPENGL_HRL + 195).
-define(glRasterPos4fv, ?SDL_OPENGL_HRL + 196).
-define(glRasterPos4iv, ?SDL_OPENGL_HRL + 197).
-define(glRasterPos4sv, ?SDL_OPENGL_HRL + 198).
-define(glReadBuffer, ?SDL_OPENGL_HRL + 199).
-define(glReadPixels, ?SDL_OPENGL_HRL + 200).
-define(glRectd, ?SDL_OPENGL_HRL + 201).
-define(glRectdv, ?SDL_OPENGL_HRL + 202).
-define(glRectf, ?SDL_OPENGL_HRL + 203).
-define(glRectfv, ?SDL_OPENGL_HRL + 204).
-define(glRecti, ?SDL_OPENGL_HRL + 205).
-define(glRectiv, ?SDL_OPENGL_HRL + 206).
-define(glRects, ?SDL_OPENGL_HRL + 207).
-define(glRectsv, ?SDL_OPENGL_HRL + 208).
-define(glRenderMode, ?SDL_OPENGL_HRL + 209).
-define(glRotated, ?SDL_OPENGL_HRL + 210).
-define(glRotatef, ?SDL_OPENGL_HRL + 211).
-define(glScaled, ?SDL_OPENGL_HRL + 212).
-define(glScalef, ?SDL_OPENGL_HRL + 213).
-define(glScissor, ?SDL_OPENGL_HRL + 214).
-define(glSelectBuffer, ?SDL_OPENGL_HRL + 215).
-define(glShadeModel, ?SDL_OPENGL_HRL + 216).
-define(glStencilFunc, ?SDL_OPENGL_HRL + 217).
-define(glStencilMask, ?SDL_OPENGL_HRL + 218).
-define(glStencilOp, ?SDL_OPENGL_HRL + 219).
-define(glTexCoord1dv, ?SDL_OPENGL_HRL + 220).
-define(glTexCoord1fv, ?SDL_OPENGL_HRL + 221).
-define(glTexCoord1iv, ?SDL_OPENGL_HRL + 222).
-define(glTexCoord1sv, ?SDL_OPENGL_HRL + 223).
-define(glTexCoord2dv, ?SDL_OPENGL_HRL + 224).
-define(glTexCoord2fv, ?SDL_OPENGL_HRL + 225).
-define(glTexCoord2iv, ?SDL_OPENGL_HRL + 226).
-define(glTexCoord2sv, ?SDL_OPENGL_HRL + 227).
-define(glTexCoord3dv, ?SDL_OPENGL_HRL + 228).
-define(glTexCoord3fv, ?SDL_OPENGL_HRL + 229).
-define(glTexCoord3iv, ?SDL_OPENGL_HRL + 230).
-define(glTexCoord3sv, ?SDL_OPENGL_HRL + 231).
-define(glTexCoord4dv, ?SDL_OPENGL_HRL + 232).
-define(glTexCoord4fv, ?SDL_OPENGL_HRL + 233).
-define(glTexCoord4iv, ?SDL_OPENGL_HRL + 234).
-define(glTexCoord4sv, ?SDL_OPENGL_HRL + 235).
-define(glTexCoordPointer, ?SDL_OPENGL_HRL + 236).
-define(glTexEnvf, ?SDL_OPENGL_HRL + 237).
-define(glTexEnvfv, ?SDL_OPENGL_HRL + 238).
-define(glTexEnvi, ?SDL_OPENGL_HRL + 239).
-define(glTexEnviv, ?SDL_OPENGL_HRL + 240).
-define(glTexGend, ?SDL_OPENGL_HRL + 241).
-define(glTexGendv, ?SDL_OPENGL_HRL + 242).
-define(glTexGenf, ?SDL_OPENGL_HRL + 243).
-define(glTexGenfv, ?SDL_OPENGL_HRL + 244).
-define(glTexGeni, ?SDL_OPENGL_HRL + 245).
-define(glTexGeniv, ?SDL_OPENGL_HRL + 246).
-define(glTexImage1D, ?SDL_OPENGL_HRL + 247).
-define(glTexImage2D, ?SDL_OPENGL_HRL + 248).
-define(glTexParameterf, ?SDL_OPENGL_HRL + 249).
-define(glTexParameterfv, ?SDL_OPENGL_HRL + 250).
-define(glTexParameteri, ?SDL_OPENGL_HRL + 251).
-define(glTexParameteriv, ?SDL_OPENGL_HRL + 252).
-define(glTexSubImage1D, ?SDL_OPENGL_HRL + 253).
-define(glTexSubImage2D, ?SDL_OPENGL_HRL + 254).
-define(glTranslated, ?SDL_OPENGL_HRL + 255).
-define(glTranslatef, ?SDL_OPENGL_HRL + 256).
-define(glVertex2dv, ?SDL_OPENGL_HRL + 257).
-define(glVertex2fv, ?SDL_OPENGL_HRL + 258).
-define(glVertex2iv, ?SDL_OPENGL_HRL + 259).
-define(glVertex2sv, ?SDL_OPENGL_HRL + 260).
-define(glVertex3dv, ?SDL_OPENGL_HRL + 261).
-define(glVertex3fv, ?SDL_OPENGL_HRL + 262).
-define(glVertex3iv, ?SDL_OPENGL_HRL + 263).
-define(glVertex3sv, ?SDL_OPENGL_HRL + 264).
-define(glVertex4dv, ?SDL_OPENGL_HRL + 265).
-define(glVertex4fv, ?SDL_OPENGL_HRL + 266).
-define(glVertex4iv, ?SDL_OPENGL_HRL + 267).
-define(glVertex4sv, ?SDL_OPENGL_HRL + 268).
-define(glVertexPointer, ?SDL_OPENGL_HRL + 269).
-define(glViewport, ?SDL_OPENGL_HRL + 270).

%%  Copyright (c) 2001 Dan Gudmundsson
%%
%%  See the file "license.terms" for information on usage and redistribution
%%  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
%% 
%%     $Id: sdl_util.hrl,v 1.2 2005/06/29 14:45:39 dgud Exp $
%%
%%%----------------------------------------------------------------------
%%% File    : sdl_util.hrl
%%% Author  : Dan Gudmundsson <dgud@erix.ericsson.se>
%%% Purpose : 
%%% Created : 13 Sep 2000 by Dan Gudmundsson <dgud@erix.ericsson.se>
%%%----------------------------------------------------------------------


-record(sdlmem, {type, bin, size}).
-define(_PTR, 64/unsigned-native).


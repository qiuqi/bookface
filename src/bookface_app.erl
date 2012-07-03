%% @author Mochi Media <dev@mochimedia.com>
%% @copyright bookface Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the bookface application.

-module(bookface_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for bookface.
start(_Type, _StartArgs) ->
    bookface_deps:ensure(),
    bookface_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for bookface.
stop(_State) ->
    ok.

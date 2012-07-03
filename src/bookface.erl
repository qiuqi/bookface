%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc bookface.

-module(bookface).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the bookface server.
start() ->
    bookface_deps:ensure(),
    ensure_started(crypto),
    application:start(bookface).


%% @spec stop() -> ok
%% @doc Stop the bookface server.
stop() ->
    application:stop(bookface).

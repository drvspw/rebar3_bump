-module(rebar3_bump).

-export([init/1]).

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
    {ok, State1} = rebar3_bump_prv:init(State),
    {ok, State1}.

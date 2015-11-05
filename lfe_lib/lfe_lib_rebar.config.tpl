{erl_opts, []}.

{deps, [
    {lfe, {git, "git://github.com/rvirding/lfe", {branch, "develop"}}}
]}.

{plugins, [
    {'lfe-compile', {git, "https://github.com/lfe-rebar3/compile.git", {branch, "master"}}},
    {'lfe-clean', {git, "https://github.com/lfe-rebar3/clean.git", {branch, "master"}}},
    {'lfe-repl', {git, "git://github.com/lfe-rebar3/repl.git", {branch, "master"}}}
]}.

{provider_hooks, [
  {pre, [{compile, {lfe, compile}}]}
]}.

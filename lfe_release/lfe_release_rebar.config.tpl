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

{relx, [{release, {'{{ name }}', "0.1.0"},
         ['{{ name }}',
          lfe,
          sasl]},

        {sys_config, "./config/sys.config"},
        {vm_args, "./config/vm.args"},

        {dev_mode, true},
        {include_erts, false},

        {extended_start_script, true}]
}.

{profiles, [{prod, [{relx, [{dev_mode, false},
                            {include_erts, true}]}]
            }]
}.

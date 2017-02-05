{erl_opts, [debug_info]}.
{lfe_first_files, []}.

{deps, [lfe]}.

{plugins, [
    {'lfe-compile', "0.8.0-rc3", {pkg, rebar3_lfe_compile}},
    rebar3_run
]}.

{provider_hooks, [
  {pre, [{compile, {lfe, compile}}]}
]}.

{profiles, [
  {doc, [
    {plugins, [
      {lodox, {git, "https://github.com/lfe-rebar3/lodox.git", {tag, "0.16.2"}}}
      ]}
    ]},

  {prod, [{relx, [{dev_mode, false},
                  {include_erts, true}]},

  {test, [
    {eunit_compile_opts, [
      {src_dirs, ["test", "src"]}
      ]},
    {ct_compile_opts, [
      {src_dirs, ["test", "src"]}
      ]},
    {deps, [ltest]}
  ]}]
}.

{relx, [{release, {'{{ name }}', "0.0.1"},
         ['{{ name }}',
          sasl]},

        {sys_config, "./config/sys.config"},
        {vm_args, "./config/vm.args"},

        {dev_mode, true},
        {include_erts, false},

        {extended_start_script, true}]
}.

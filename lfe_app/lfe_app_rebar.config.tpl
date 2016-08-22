{erl_opts, [debug_info]}.
{lfe_first_files, []}.

{deps, []}.

{plugins, [
    {'lfe-compile', {git, "https://github.com/lfe-rebar3/compile.git", {tag, "0.5.0"}}}
]}.

{provider_hooks, [
  {pre, [{compile, {lfe, compile}}]}
]}.

{profiles, [
  {test, [
    {eunit_compile_opts, [
      {src_dirs, ["test", "src"]}
      ]},
    {deps, [
      {ltest, ".*", {git, "git://github.com/lfex/ltest.git", {tag, "0.9.0"}}}]}
      ]},

  {doc, [
    {plugins, [
      {lodox, {git, "https://github.com/lfe-rebar3/lodox.git", {tag, "0.15.1"}}}
      ]}
    ]}
  ]}.

{erl_opts, [debug_info]}.
{lfe_first_files, []}.

{deps, [lfe]}.

{plugins, [
  rebar_alias,
  {'lfe-compile', "0.8.0-rc3", {pkg, rebar3_lfe_compile}}
]}.

{alias, [{test, [eunit, {ct, "--sname ct --dir ebin"}]}]}.

{provider_hooks, [
  {pre, [{compile, {lfe, compile}}]}
]}.

{profiles, [
  {test, [
    {eunit_compile_opts, [
      {src_dirs, ["test", "src"]}
      ]},
    {ct_compile_opts, [
      {src_dirs, ["test", "src"]}
      ]},
    {deps, [ltest]}]},

  {doc, [
    {plugins, [
      {lodox, {git, "https://github.com/lfe-rebar3/lodox.git", {tag, "0.16.2"}}}
      ]}
    ]}
  ]}.

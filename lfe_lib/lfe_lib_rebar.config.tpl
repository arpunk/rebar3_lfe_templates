{erl_opts, [debug_info]}.
{lfe_first_files, []}.

{deps, [
    {lfe, {git, "git://github.com/rvirding/lfe", {tag, "1.1.1"}}}
]}.

{plugins, [
    {'lfe-compile', {git, "https://github.com/lfe-rebar3/compile.git", {tag, "0.4.0"}}}
]}.

{provider_hooks, [
  {pre, [{compile, {lfe, compile}}]}
]}.

{profiles, [
  {dev, [
    {plugins, [
      {'lfe-version', ".*", {git, "https://github.com/lfe-rebar3/version.git", {tag, "0.3.2"}}},
      {'lfe-repl', ".*", {git, "https://github.com/lfe-rebar3/repl.git", {tag, "0.2.1"}}},
      {'lfe-clean', ".*", {git, "https://github.com/lfe-rebar3/clean.git", {tag, "0.2.1"}}}
      ]}
    ]},

  {test, [
    {eunit_compile_opts, [
      {src_dirs, ["test", "src"]}
      ]},
    {deps, [
      {ltest, ".*", {git, "git://github.com/lfex/ltest.git", {tag, "0.8.2"}}}]}
      ]},

  {doc, [
    {plugins, [
      {lodox, {git, "https://github.com/lfe-rebar3/lodox.git", {tag, "0.12.14"}}}
      ]}
    ]}
  ]}.

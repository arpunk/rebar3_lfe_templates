{application, '{{ name }}',
 [{description, "An LFE Application"},
  {vsn, "0.0.1"},
  {registered, []},
  {applications,
   [kernel,
    stdlib
   ]},
  {mod, {'{{ name }}-app', []}},
  {env, []},
  {modules, []},

  {contributors, []},
  {licenses, []},
  {links, []}
 ]}.

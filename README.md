rebar3 LFE templates
====================

A set of basic rebar3 templates for LFE applications.

## Setup

* Install rebar3
* Copy the templates to `$HOME/.config/rebar3/templates`:
```sh
$ make
```

## Use

There are 4 templates:

* `lfe_app`
* `lfe_lib`
* `lfe_escript`
* `lfe_release`

They all mimic the default rebar3 templates.

```
$ rebar3 new lfe_app name=my_new_app
$ cd my_new_app
$ rebar3 compile
```

## License

Copyright (c) 2015 Ricardo Lanziano

This work is free. You can redistribute it and/or modify it under the
terms of the MIT License. See the LICENSE file for more details.

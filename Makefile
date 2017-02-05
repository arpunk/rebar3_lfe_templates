PREFIX ?= $(HOME)/.config/rebar3/templates

default: install

install: copy-templates

copy-templates:
	cp -r $(PWD)/lfe_app $(PREFIX)/
	cp -r $(PWD)/lfe_lib $(PREFIX)/
	cp -r $(PWD)/lfe_release $(PREFIX)/

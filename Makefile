.PHONY: local help

all:
	bundle install --deployment

local:
	sudo env "PATH=$$PATH" \
	bundle exec -- \
	itamae local --node-json=nodes/my.json \
	roles/essential.rb \
	roles/server-env.rb

help:
	cat Makefile

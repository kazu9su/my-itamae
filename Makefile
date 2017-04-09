.PHONY: local help

all:
	Gemfile.lock

Gemfile.lock
	bundle install --path vendor/bundle

sakura: Gemfile.lock
	sudo -H bundle exec -- \
	itamae local --node-json=nodes/my.json \
	roles/$@.rb

vagrant: Gemfile.lock
	sudo -H bundle exec -- \
	itamae local --node-json=nodes/my.json \
	roles/$@.rb


help:
	cat Makefile

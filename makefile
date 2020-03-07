# scripts to rule them all

bootstrap:
	echo "2.5.3" > .ruby-version
	gem install bundler
	bundle install
setup: bootstrap
update: bootstrap
server:
	bundle exec jekyll serve
test: build
cibuild: test
console: server
build:
	bundle exec jekyll build
build-and-watch:
	bundle exec jekyll build --watch
build-trace:
	bundle exec jekyll build --trace

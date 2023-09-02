.PHONY : build serve update-dev-tools

build:
	bundle exec jekyll build

build-watch:
	bundle exec jekyll build --watch

serve:
	bundle exec jekyll serve #--detach

update-dev-tools:
	bundle update

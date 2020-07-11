all:
	bundle exec jekyll serve

update:
	cp -i ~/Templates/Science/LaTeX/mathjax.html assets/.

init:
	gem install bundler
	bundle config --local set path 'vendor/bundle'
	bundle install --path vendor/bundle

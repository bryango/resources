all: update
	bundle exec jekyll serve

update:
	cp -i ~/Templates/TeXplates/mathjax.html assets/.

update-res:
	wget https://raw.githubusercontent.com/allejo/jekyll-toc/master/_includes/toc.html -O _includes/toc.html

init:
	gem install bundler
	bundle config --local set path 'vendor/bundle'
	bundle install --path vendor/bundle

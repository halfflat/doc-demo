.PHONY: all doc gh-pages push-gh-pages
all: doc

top := ..
site := www

# path to commit-dir script
commit-dir := ./commit-dir

doc:
	jekyll build -s $(top)/doc -d $(site)

gh-pages: doc
	$(commit-dir) gh-pages "$(site)"

push-gh-pages: gh-pages
	git push origin gh-pages:gh-pages

WEBSITE_ROOT = ../sites/website

build:
	@uwe build $(WEBSITE_ROOT) --profile=docs
	@rm -rf public_html
	@mkdir public_html
	@cp -rf ${WEBSITE_ROOT}/build/docs/* public_html

release: build
	@(git add . && git commit -m "Update docs." && git push origin main)

.PHONY: build release

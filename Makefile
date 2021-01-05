WEBSITE_ROOT = ../sites/website

build:
	@uwe build $(WEBSITE_ROOT) --profile=docs
	@rm -rf docs
	@cp -rf ${WEBSITE_ROOT}/build/docs .

release: build
	@(git add . && git commit -m "Update docs." && git push origin main)

.PHONY: build release

SHELL = /bin/bash
PACKAGE_NAME = etf
DEPS_FLAGS = --check-pkg-deps --unused-pkg-deps
DOC_DIR = ./doc

all: install setup

install:
	-raco pkg install --deps search-auto --link $(PWD)/$(PACKAGE_NAME)-{lib,test,doc} $(PWD)/$(PACKAGE_NAME)
	-raco pkg remove --auto

show:
	-raco pkg show $(PWD)/$(PACKAGE_NAME)-{lib,test,doc}

remove:
	-raco pkg remove $(PACKAGE_NAME)-{lib,test,doc} $(PACKAGE_NAME)

setup: setup-lib-test setup-doc

setup-lib-test:
	-raco setup --tidy --avoid-main $(DEPS_FLAGS) --pkgs $(PACKAGE_NAME)-{lib,test} $(PACKAGE_NAME)

setup-doc:
	raco setup \
		--no-launcher \
		--no-foreign-libs \
		--no-info-domain \
		--no-pkg-deps \
		--no-install \
		--no-post-install \
		--pkgs $(PACKAGE_NAME)-doc

standalone-docs: $(DOC_DIR)
	mkdir -p docs
	scribble +m \
		--redirect-main http://pkg-build.racket-lang.org/doc/ \
		--htmls \
		--dest $(DOC_DIR) \
		./$(PACKAGE_NAME)-doc/scribblings/$(PACKAGE_NAME).scrbl

$(DOC_DIR):
	@mkdir -p $(DOC_DIR)

clean:
	-raco setup --fast-clean --pkgs $(PACKAGE_NAME)-{lib,test,doc}
	-raco setup --fast-clean --pkgs $(PACKAGE_NAME)
	rm -rf $(DOC_DIR)/*

test:
	raco test -exp $(PACKAGE_NAME)-{lib,test,doc}

test-with-errortrace:
	racket -l errortrace -l racket -e '(require (submod "$(PACKAGE_NAME)-test/tests/etf.rkt" test))'

errortrace: test-with-errortrace

docs:
	raco docs $(PACKAGE_NAME)

coverage-check:
	raco cover -b -d ./coverage -p $(PACKAGE_NAME)-{lib,test}

coverage-report:
	open coverage/index.html

cover: coverage-check coverage-report

cover-coveralls:
	raco cover -b -f coveralls -p $(PACKAGE_NAME)-{lib,test}

.PHONY:	help install remove build build-docs build-all clean check-deps test test-flow test-on test-threading test-switch test-definitions test-macro test-util test-with-errortrace errortrace errortrace-flow errortrace-on errortrace-threading errortrace-switch errortrace-definitions errortrace-macro errortrace-util docs cover coverage-check coverage-report cover-coveralls profile-forms profile-selected-forms profile-competitive profile report-benchmarks
.PHONY:	etf etf-lib etf-doc etc-test

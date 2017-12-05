TESTS = test/*.js
REPORTER = spec
ISTANBUL = ./node_modules/.bin/istanbul
MOCHA = ./node_modules/mocha/bin/_mocha
COVERALLS = ./node_modules/.bin/coveralls

test:
	$(MOCHA) -bR $(REPORTER) $(TESTS)

coveralls:
	$(ISTANBUL) cover --report lcovonly $(MOCHA) -- -R $(REPORTER) $(TESTS) && \
	cat ./coverage/lcov.info | $(COVERALLS) && rm -rf ./coverage

coverage: test coveralls

.PHONY: test

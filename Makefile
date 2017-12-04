TESTS = test/*.js
REPORTER = spec
ISTANBUL = ./node_modules/.bin/istanbul
MOCHA = ./node_modules/mocha/bin/_mocha
COVERALLS = ./node_modules/.bin/coveralls

test:
	$(MOCHA) -R $(REPORTER) $(TESTS)

test-cov:
	$(ISTANBUL) cover --report html $(MOCHA) -- -R $(REPORTER) $(TESTS)

test-coveralls:
	$(ISTANBUL) cover --report lcovonly $(MOCHA) -- -R $(REPORTER) $(TESTS)
	cat ./coverage/lcov.info | $(COVERALLS) && rm -rf ./coverage

test-all: test test-coveralls

.PHONY: test

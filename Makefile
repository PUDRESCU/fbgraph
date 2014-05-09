# TESTS = $(shell find tests/*.test.js)
TESTS = $(shell find tests/graph.2.0.test.js)

test:
	@NODE_ENV=test vows --spec \
	$(TESTFLAGS) \
	$(TESTS) 

test-cov:
	@TESTFLAGS=--cover-plain $(MAKE) test

.PHONY: test

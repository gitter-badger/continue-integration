const assert = require("assert");

const sqrt = require("../lib/sqrt.js")

describe("Test sqrt.js", function() {
    it("负数没有平方根", function() {
        assert.throws(sqrt(-4), Error)
    })

    it("0的平方根是0", function() {
        assert.equal(sqrt(0), 0)
    })

    it("4的平方根是2", function() {
        assert.equal(sqrt(4), 2)
    })
})
module.exports = function sqrt(x) {
    if (x < 0) {
        throw new Error("Wrong arguments")
    }

    return Math.exp(Math.log(x) / 2)
}

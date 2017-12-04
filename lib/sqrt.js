module.exports = function sqrt(x) {
    if (x < 0) {
        throw new Error("负数没有平方根");
    }

    return Math.exp(Math.log(x) / 2);
}
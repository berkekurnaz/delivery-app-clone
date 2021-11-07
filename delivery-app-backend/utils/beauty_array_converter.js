exports.convert = function (data) {
    return JSON.parse(data.toString().replace(/\s/g,""));
}
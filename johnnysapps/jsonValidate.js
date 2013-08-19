/*
 *  Simple JSON validator written in NodeJS
 *  =======================================
 *
 *  Follow me on Github: github.com/IonicaBizau
 *  2013
 * */

var relativePath = process.argv[2];
var absPathToFile = process.cwd() + "/" + relativePath;

console.log("> Relative path: ", relativePath);
console.log("> Ansolute path: ", absPathToFile);
console.log("+---------------+");

var json;

try {
    json = require(absPathToFile);
} catch (e) {
    console.log("Invalid JSON file.");
    console.log(e.message);
    require(absPathToFile);
    process.exit(1);
}

console.log(JSON.stringify(json, null, 4));
console.log("Valid JSON file");

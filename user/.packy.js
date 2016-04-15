"use strict";

const isThere = require("is-there");

module.exports = {
    author: "Ionică Bizău <bizauionica@gmail.com> (http://ionicabizau.net)"
  , license: "MIT"
  , main: val => {
        if (isThere(val)) {
            return val;
        } else {
            console.log(`Warn: ${val} was not found. Using lib/index.js`);
        }
        return "lib/index.js"
    }
  , repository: {
        type: "git",
        url: (val, data) => val || `git+ssh://git@github.com/IonicaBizau/${data.name}.git`
    }
  , bugs: {
        url: (val, data) => val || `https://github.com/IonicaBizau/${data.name}/issues`
    }
  , homepage: (val, data) => val || `https://github.com/IonicaBizau/${data.name}#readme`
};

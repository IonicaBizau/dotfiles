"use strict";

const isThere = require("fs").existsSync

let isBloggify = ~process.argv.indexOf("--bloggify");

let owner = isBloggify ? "Bloggify" : "IonicaBizau";

module.exports = {
    homepage: (val, data) => val || `https://github.com/${owner}/${data.name}#readme`
  , author: (val, data) => {
        return isBloggify || /\/Bloggify\//i.test(data.homepage)
            ? "Bloggify <support@bloggify.org> (https://bloggify.org)"
            : "Ionică Bizău <bizauionica@gmail.com> (https://ionicabizau.net)"
    }
  , license: "MIT"
  , files: [
        "bin/"
      , "app/"
      , "lib/"
      , "dist/"
      , "src/"
      , "scripts/"
      , "resources/"
      , "menu/"
      , "cli.js"
      , "index.js"
        // Bloggify fields
      , "bloggify.js"
      , "bloggify.json"
      , "bloggify/"
    ]
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
        url: (val, data) => val || `git+ssh://git@github.com/${owner}/${data.name}.git`
    }
  , bugs: {
        url: (val, data) => val || `https://github.com/${owner}/${data.name}/issues`
    }
};

const packageDependents = require("package-dependents")
    , util = require("util")
    , packageJson = util.promisify(require("pkg.json"))
    , fs = require("fs").promises

module.exports = async (tempaltePath, data, _) => {

    let packages = await packageDependents(_.pack.name)
    console.log("Found dependents.");
    packages = packages || [];
    let foundUsages = false
    if (packages.length || _.pack.blah.usages) {
        foundUsages = true;
    }

    if (foundUsages) {
        // Who used this?
        console.log("Fetching the dependents. This may take a while")
        _.foundUsages = true
        let strPacks = packages.map(c => {
            c.homepage = c.homepage || ("https://npmjs.com/package/" + c.name);
            c.authorIsNotMe = c.author && c.author.name && (!c.author.email || c.author.email.split("@")[0] !== "bizauionica");
            if (c.author && c.author.name) {
                c.__by = c.author.name;
                if (c.author.website) {
                    c.__by = "[" + c.__by + "](" + c.author.website + ")";
                }
            }
            return " - `" + c.name + "`"
            return " - [`" + c.name + "`]" + "(" + c.homepage + ")" + (c.authorIsNotMe ? " (by " + c.__by + ")" : "") + "—" + c.description;
        })
        _.usages = strPacks
    }

    // Related packages
    if (Array.isArray(_.pack.blah.related)) {
        _.pack.blah.related = { ul: _.pack.blah.related };
    }

    if (_.pack.blah && _.pack.blah.related && Array.isArray(_.pack.blah.related.ul)) {
        let proms = []
        const packs = await Promise.all(_.pack.blah.related.ul.map(c => {
            if (typeof c !== "string" || ~c.indexOf(" ")) { return null; }
            return packageJson(c)
        }))

        _.pack.blah.related.ul = packs.filter(Boolean).map(pack => {
            return "[`" + pack.name + "`](" + pack.homepage + ")—" + pack.description
        })
    }

    // Create the .github dir and its files
    const projRoot = process.cwd()

    try {
        await fs.mkdir(`${projRoot}/.github`)
    } catch (e) {
        if (e.code !== "EEXIST") {
            console.warn(e)
        }
    }

    try {
        await fs.writeFile(`${projRoot}/.github/FUNDING.yml`, [
            "github: ionicabizau",
            "patreon: ionicabizau",
            "open_collective: ionicabizau",
            "custom: https://www.buymeacoffee.com/h96wwchmy"
        ].join("\n"))
    } catch (e) {
        console.warn(e)
    }
}

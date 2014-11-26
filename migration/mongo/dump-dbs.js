// Dependencies
var Mongo = require("mongodb")
  , Db = Mongo.Db
  , Server = Mongo.Server
  , Exec = require("child_process").exec
  , db = new Db("test", new Server("localhost", 27017))
  ;

// Open database
db.open(function(err, db) {
    if (err) { throw err; }

    // List databases
    db.admin().listDatabases(function(err, dbs) {
        if (err) { throw err; }

        // Dump databases
        dbs = dbs.databases;
        function dump(i) {
            var c = dbs[i];
            if (!c) { return db.close(); }
            console.log("> Dumping database: " + c.name);
            Exec("mongodump -d " + c.name, function (err, stdout) {
                if (err) { throw err; }
                dump(i + 1);
            });
        }
        dump(0);
    });
});

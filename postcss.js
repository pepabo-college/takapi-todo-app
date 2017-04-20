
'use strict';

var fs = require("fs");
var postcss = require("postcss");
var atImport = require("postcss-import");

var css = fs.readFileSync("app/assets/stylesheets/app.css", "utf8");

postcss()
    .use(atImport({path: ["app/assets/stylesheets"]}))
    .process(css, {
        from: "app/assets/stylesheets/app.css"
    })
    .then(function (result) {
        var output = result.css;
        console.log(output);
});

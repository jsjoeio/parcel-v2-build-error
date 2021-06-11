var browserify = require("browserify")
const fs = require("fs")

browserify()
  .add("out/register.js") // main entry of an application
  .bundle()
  .on("error", function (error) {
    console.error(error.toString())
  })
  .pipe(fs.createWriteStream("out/register.joe.js"))

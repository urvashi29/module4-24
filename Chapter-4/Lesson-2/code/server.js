var http = require("http");

var server = http.createServer(function (req, res) {
  //   console.log(res);
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Alina Joe");
});

server.listen(3000, function () {
  console.log("Server is running at 3000!");
});

// File system
// asyncronous method by default
var fs = require("fs");

fs.readFile("./sample.txt", "utf-8", function (err, data) {
  if (err) {
    console.log(err);
  }
  console.log(data);
});

let content = "Hi, this is alina!";

fs.writeFile("./sample.txt", content, function (err) {
  if (err) {
    console.log(err);
  }
  console.log("content is written");
});

// create & remove folders
fs.mkdir("new folder", function (err) {
  if (err) {
    console.log(err);
  }
  console.log("folder created!");
});

fs.rmdir("new folder", function (err) {
  if (err) {
    console.log(err);
  }
  console.log("folder created!");
});

// sync (they will take callback)
// fs.readFileSync()
// fs.writeFileSync()
// fs.rmdirSync()
// fs.mkdirSync()

// os module
var os = require("os");
console.log(os.platform());
console.log(os.hostname());
console.log(os.arch());

// Path module
const path = require("path");

const normalization = path.normalize("/dg/bdej///bguh/h/hjhuj///bhb");
console.log(normalization);

const joinPath = path.join("/fkfo", "/bgdufef", "hfirj", "jjf/fjif", "frhif");
console.log(joinPath);

const resolvePath = path.resolve("juhf/hfu", "...", "/", "cjfrjf/../jci");
console.log(resolvePath);

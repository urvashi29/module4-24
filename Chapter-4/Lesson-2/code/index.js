// import counter from "./message.js"; //ES6
var counter = require("./message"); //ES5

console.log(counter([2, 1, 3, 3, 4]));

// add   "type": "module" in package.json to run es6 import/export
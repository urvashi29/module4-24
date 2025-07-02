// const fs = require("fs");

// const data = fs.readFileSync("./sample.txt", "utf-8");
// const dataBuffer = fs.readFileSync("./sample.txt");
// console.log(data, dataBuffer);

// // Buffer
// const buffOne = new Buffer.alloc(10); //create a buffer of 10 bytes
// console.log(buffOne);

// const buffTwo = new Buffer.from([10, 20, 50, 40, 30]);
// console.log(buffTwo);

// const buffThree = new Buffer.alloc(5, "hello", "utf-8");
// console.log(buffThree);

// //extract data
// const str = buffThree.subarray(2, 4); //return new buffer containing "ll"
// console.log(str);

// // convert buffer
// const strVal = buffThree.toString("utf-8", 0, buffThree.length);
// console.log(strVal);

// // copying buffer
// const buff1 = new Buffer.alloc(5, "world", "utf-8");
// const buff2 = new Buffer.alloc(5);
// console.log(buff2);
// buff1.copy(buff2);
// console.log(buff2);

// // URL
// const url = require("url");

// const urlString =
//   "https://grow.almabetter.com/web-dev?learn=full-stack-web-development/#FOUNDATION_TRACK/nodejs-in-depth-se-ai/Concept-Notion";

// const parsedUrl = url.parse(urlString);
// console.log(parsedUrl);
// console.log(parsedUrl.protocol);
// console.log(parsedUrl.host);
// console.log(parsedUrl.query);
// console.log(parsedUrl.hash);

// //create a url
// const urlObject = {
// protocol: 'https:',
//   slashes: true,
//   auth: null,
//   host: 'grow.almabetter.com',
//   port: null,
//   hostname: 'grow.almabetter.com',
//   hash: '#FOUNDATION_TRACK/nodejs-in-depth-se-ai/Concept-Notion',
//   search: '?learn=full-stack-web-development/',
//   query: 'learn=full-stack-web-development/',
//   pathname: '/web-dev',
//   path: '/web-dev?learn=full-stack-web-development/',
//   href: 'https://grow.almabetter.com/web-dev?learn=full-stack-web-development/#FOUNDATION_TRACK/nodejs-in-depth-se-ai/Concept-No'
// }
// console.log("url", url.format(urlObject));


// using custom module
const colors = require("mynodemodule");
const randomColor = colors.getRandomColor();
console.log(randomColor);

// import chalk from "chalk";
console.log(chalk.bgGray("hello"));
console.log(chalk.cyan("hello"));

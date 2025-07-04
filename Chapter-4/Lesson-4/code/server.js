// Node server
// const http = require("http");

// const server = http.createServer((req, res) => {
//   // if(req.method == "GET") {
//   //   res.end({});
//   // }
//   // if(req.method = "POST") {
//   // })
//   console.log(req.method);
//   res.end("done");
// });

// server.listen(3000, () => {
//   console.log("server is running");
// });

//expressJs
const express = require("express");
const app = express();

// to support json format in express
app.use(express.json()); //middleware

app.listen(3000, () => {
  console.log("application is running on 3000!");
});

// in real time data will come from mongodb
const person = [
  {
    id: 1,
    name: "alina",
    age: 20,
    city: "banglore",
    salary: 90989,
  },
  {
    id: 2,
    name: "alex",
    age: 23,
    city: "pune",
    salary: 989989,
  },
  {
    id: 3,
    name: "harry",
    age: 25,
    city: "chandigarh",
    salary: 90989,
  },
];

// endpoint/resource
// app.method(path, callbackFun(req,res))
app.get("/employees/", (req, res) => {
  res.status(200).json({ data: person });
  // res.status(404).json({ message: "client error" });
});

app.get("/employees/:id", (req, res) => {
  const id = req.params.id; //2
  console.log(id);

  let employee = person.find((emp) => emp.id == id);
  if (employee) {
    res.status(200).json({ employee });
  } else {
    res.status(404).json({ message: "user doesn't exist!" });
  }
});

// post request
app.post("/employee", (req, res) => {
  console.log(req.body);

  const emp = req.body;
  // validate
  for (const key in emp) {
    if (
      key == "name" ||
      key == "age" ||
      key == "salary" ||
      key == "city" ||
      key == "id"
    ) {
      continue;
    } else {
      res.status(400).json({ message: "Bad Request" });
    }
  }

  person.push(emp);
  res.status(201).json({ data: emp });
});

// to update
app.put("/employees/:id", (req, res) => {
  let emp = req.body;
  let id = req.params.id;

  // console.log(person.findIndex((e) => e.id == id));
  person.splice(
    person.findIndex((emp) => emp.id == id),
    1
  );
  person.push(emp);
  res.status(200).json({ data: emp });
});

// Try
// patch -> update specific propery of object
// app.patch("/employee/:id", (req, res))

//delete
// app.delete("/employees/:id", (req, res))

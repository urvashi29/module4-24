const express = require("express");
const app = express();

// to access any static resource, we use middleware
app.use(express.static("public", { maxAge: 60000 })); //middleware
app.use(express.urlencoded()); //middleware

// run middleware for a specific route
app.use("/employees", express.urlencoded());

app.get(
  "/",
  (req, res, next) => {
    req.firstGetMiddleware = "first";
    console.log(req.firstGetMiddleware);
    next();
  },
  (req, res, next) => {
    console.log(req.body);
    next();
  },
  (req, res) => {
    res.send("ok");
  }
);

app.post("/employees", (req, res) => {
  console.log(req.body);
  res.send("ok");
});

// Error handling
// app.get("/SyncError", (req,res) => {
//     throw new Error("error is thrown by endpoint!");
// })

//better way to handle
app.get("/SyncError", (req, res, next) => {
  //synchronous
  try {
    throw new Error("error thrown by endpoint");
  } catch (err) {
    next(err);
    // res.status(500).json({ message: err.message });
  }
});

// app.get("/AsyncError", (req, res) => {
//   setTimeout(() => {
//     throw new Error("async error");
//   }, 1000);
// });

// better way
app.get("/AsyncError", (req, res, next) => {
  setTimeout(() => {
    try {
      throw new Error("async error");
    } catch (err) {
      next(err);
    }
  }, 1000);
});

// custom middleware usage
app.use((error, req, res, next) => {
  if (error) {
    res.status(500).json({ message: error.message });
  }
  next();
});

app.listen(3000, () => {
  console.log("running at 3000");
});

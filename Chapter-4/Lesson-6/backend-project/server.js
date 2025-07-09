const express = require("express");
const dotEnv = require("dotenv");
const { default: dbConnection } = require("./config");
const bookRoutes = require("./routes/book-routes");

const app = express();

app.use(express.json());
app.use(bookRoutes);

dotEnv.config();

// database connection
dbConnection();

app.listen(process.env.PORT, () => {
  console.log("server started", process.env.PORT);
});

import mongoose from "mongoose";

// Database connection
const dbConnection = async () => {
  try {
    mongoose.connect(process.env.MONGODB_URL);
    const database = mongoose.connection;

    database.on("err", (err) => {
      throw new Error(err);
    });

    database.once("connected", () => {
      console.log("db connection is established");
    });
  } catch (err) {
    console.log("connetion failed", err);
  }
};

export default dbConnection;

// mongodb schema (fields & datatypes)
const mongoose = require("mongoose");

const bookSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  author: {
    type: String,
    required: true,
  },
});

const Book = mongoose.model("book", bookSchema);

module.exports = Book;

// datatypes: https://www.mongodb.com/docs/mongodb-shell/reference/data-types/

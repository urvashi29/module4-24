const express = require("express");
const Book = require("../models/book");

const routes = express.Router();

// get api
routes.get("/books", async (req, res) => {
  try {
    const books = await Book.find();
    res.status(200).json(books);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

//post request
routes.post("/books", async (req, res) => {
  try {
    const book = new Book(req.body); //creating new document
    await book.save(); //saving document in collection
    res.status(201).json(book);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
});

// delete
routes.delete("/books/:id", async (req, res) => {
  try {
    const book = await Book.findByIdAndDelete(req.params.id);
    if (!book) {
      res.status(400).json({ error: "Book not found" });
    }

    res.json({ mesasge: "deleted successfully!" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// update
routes.put("/books/:id", async (req, res) => {
  try {
    const book = await Book.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
    });

    if (!book) {
      res.status(400).json({ error: "Book not found" });
    }

    res.json(book);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = routes;

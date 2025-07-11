const express = require("express");
const TodoModel = require("../models/todo");
const routes = express.Router();

// Get saved tasks from the database
routes.get("/getTodoList", (req, res) => {
  TodoModel.find({})
    .then((todoList) => res.status(200).json(todoList))
    .catch((err) => res.json(err));
});

// Add new task to the database
routes.post("/addTodoList", (req, res) => {
  TodoModel.create({
    task: req.body.task,
    status: req.body.status,
    deadline: req.body.deadline,
  })
    .then((todo) => res.status(201).json(todo))
    .catch((err) => res.json(err));
});

// Update task fields (including deadline)
routes.post("/updateTodoList/:id", (req, res) => {
  const id = req.params.id;
  const updateData = {
    task: req.body.task,
    status: req.body.status,
    deadline: req.body.deadline,
  };
  TodoModel.findByIdAndUpdate(id, updateData)
    .then((todo) => res.json(todo))
    .catch((err) => res.json(err));
});

// Delete task from the database
routes.delete("/deleteTodoList/:id", (req, res) => {
  const id = req.params.id;
  TodoModel.findByIdAndDelete({ _id: id })
    .then((todo) => res.json(todo))
    .catch((err) => res.json(err));
});

module.exports = routes;

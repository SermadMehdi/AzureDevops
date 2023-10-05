const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello workd");
});

app.get("/customers", (req, res) => {
  res.send([1, 2, 3, 4, 5]);
});

const port = process.env["PORT"] || 8080;
console.log(port);
app.listen(port, () => console.log(`listining on port ${port}`));

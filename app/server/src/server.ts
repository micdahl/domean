import * as express from "express";

const app = express();

app.get("/", (request, response) => {
  response.json({ hello: "world" });
});

app.listen(3000, () => {
  console.log("App is running");
});

import * as express from "express";

const app = express();

app.get("/", (request: Express.Request, response: Express.Response) => {
  response.json({ hello: "world" });
});

app.listen(3000, () => {
  console.log("App is running");
});

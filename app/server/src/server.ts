import * as express from "express";

import * as homeController from "./controllers/home";

const app = express();

app.get("/", homeController.index);

app.listen(3000, () => {
  console.log("App is running");
});

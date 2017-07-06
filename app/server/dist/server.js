"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const app = express();
app.get("/", (request, response) => {
    response.json({ hello: "world" });
});
app.listen(3000, () => {
    console.log("App is running");
});
//# sourceMappingURL=server.js.map
const express=require("express");
const app=express();
app.use(express.static("site"));
app.listen(3000);
const express=require("express");
const app=express();
app.use(express.static("public"));
app.listen(3000,(err)=>{

});
// middleware body-parse
app.use(express.urlencoded({extended:true}));
/*

body-parser

npm install body-parser

const bodyparser=require("body-parser");
const parser=bodyparse.urlEncoded({extended:true});
app.use(parser());

*/
app.get("/sendData",(req,res)=>{

    console.log("called",req.query);
    res.send("Request received"+req.query.username);
})

app.post("/sendData",(req,res)=>{

    console.log("called",req.body);
    res.send("Request received");
})

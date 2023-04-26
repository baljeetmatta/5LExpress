const express=require("express");
const app=express();
const path=require("path");
app.use(express.json());
app.use(express.urlencoded({extended:true}));//bodyparser

//For session
const cookieparser=require("cookie-parser");
const sessions=require("express-session");
const day=1000*60*60*24;
app.use(cookieparser());
app.use(sessions({
    secret:'klsjdal@kd!@',
    saveUninitialized:true,
    resave:false,
    cookie:{maxAge:day}

}));



app.get("/dashboard.html",(req,res,next)=>{
if(req.session.username==null)
res.redirect("/login");
else
next();

})
app.use(express.static("public"));





app.get("/login",(req,res)=>{

    res.sendFile(path.join(__dirname,"./public/login.html"));

})
app.post("/login",(req,res)=>{
   // console.log(req.body);
   // res.end();
   if(req.body.username==req.body.password)
   {
    req.session.username=req.body.username;
    res.redirect("/dashboard");
   }
   else
   res.redirect("/login");


})
app.get("/dashboard",(req,res)=>{
if(req.session.username!=null)
    res.sendFile(path.join(__dirname,"./public/dashboard.html"));
    else
    res.redirect("/login");


})
app.get("/logout",(req,res)=>{
    req.session.destroy();
    res.redirect("/login");

})

app.listen(3000,(err)=>{

})
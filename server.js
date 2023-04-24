const exp=require("express");
const path=require("path")
const app=exp();//Create a server
app.use(exp.static("public"));
app.get("/",(req,res)=>{
    //res.write("Demo");
    //res.end();
   // res.send("Demo");
   res.sendFile(path.join(__dirname+"/public/index.html"));


})
app.get("/about",(req,res)=>{
    res.sendFile(path.join(__dirname,"/site/travelling/aboutus.html"))
})

app.get("/about",(req,res)=>{
    //res.write("Demo");
    //res.end();
    //res.send("About us Content");
    res.sendFile(path.join(__dirname+"/public/aboutus.html"));
    

})

app.get("/contact",(req,res)=>{
    //res.write("Demo");
    //res.end();
    //res.status(200).send("Contact us Content");
    res.sendFile(path.join(__dirname+"/public/contactus.html"));
    

})

app.get("*",(req,res)=>{
    res.status(404).send("Page not not found")
})
//get,post,put,delete,all
//fetch,save,update,delete
//CRUD  create read update and delete
app.listen(3000,(err)=>{

    if(err)
    console.log("unable to start the server");
    else
    console.log("Server started");
})

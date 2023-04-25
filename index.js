const express=require("express");
const userRoutes=require("./routes/userRoutes");
const products=require("./data");

const app=express();
app.use(express.json());

app.use(express.static("site"));
app.use(express.urlencoded({extended:true}));

app.use("/users",userRoutes);

app.get("/",(req,res)=>{

  //  res.send("Welcome to Home page end point ")
 // res.json({"name":"abc"});
 res.json(products);


})

app.get("/SingleProduct/:data",(req,res)=>{
//res.send(req.params.data)
    //console.log(req.params.data);
    //res.end();
    var newProducts=products.filter((item)=>
    {
        if(item.id==req.params.data)
        return true;
    })
    res.json(newProducts);

});

app.get("/FilterData",(req,res)=>{

    var newProducts=products.filter((item)=>
    {
        if(item.id==req.query.id)
        return true;
    })
    res.json(newProducts);

});

app.post("/FilterData",(req,res)=>{

    var newProducts=products.filter((item)=>
    {
        if(item.id==req.body.id)
        return true;
    })
    res.json(newProducts);

});

// app.get("/users",(req,res)=>{
//     res.send("User Home");
// })
app.listen(3000);

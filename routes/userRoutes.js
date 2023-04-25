const express=require("express");
const router=express.Router();
// /users/
router.get("/",(req,res)=>{

    res.send("User home page");
})
// /users/orders
router.get("/orders",(req,res)=>{

    res.send("User Order page");
})

router.get("/payments",(req,res)=>{

    res.send("User Payment page");
})
router.get("/xy",(req,res)=>{

    res.send("User Custom page");
})
module.exports=router;


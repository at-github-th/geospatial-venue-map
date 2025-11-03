import express from "express";
import morgan from "morgan";
import cors from "cors";
const app = express();
app.use(cors()); app.use(express.json()); app.use(morgan("dev"));
app.get("/", (_q,r)=>r.json({name:"Geospatial Map API", ok:true}));
app.get("/api", (_q,r)=>r.json({hint:"add real endpoints here"}));
app.listen(5107, ()=>console.log("Geospatial Map API on http://127.0.0.1:5107"));

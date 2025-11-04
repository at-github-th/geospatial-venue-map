import express from "express";
import cors from "cors";
import morgan from "morgan";
import { v4 as uuidv4 } from "uuid";

const HOST = "0.0.0.0";   // <- wide bind to avoid connection-refused from browser
const PORT = 5107;

const app = express();
app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

let points = [
  { id: uuidv4(), label: "Entrance", x: 120, y: 320, color: "#ffaa00" },
  { id: uuidv4(), label: "Cafe",     x: 420, y: 260, color: "#00aaff" },
];

app.get("/api/health", (_q, r) => r.json({ ok: true, name: "Geospatial Map API" }));
app.get("/api/points", (_q, r) => r.json(points));
app.post("/api/points", (q, r) => {
  const { label = "Point", x, y, color = "#ffffff" } = q.body ?? {};
  if (typeof x !== "number" || typeof y !== "number") {
    return r.status(400).json({ error: "x and y must be numbers" });
  }
  const p = { id: uuidv4(), label, x, y, color };
  points.push(p);
  r.status(201).json(p);
});
app.delete("/api/points/:id", (q, r) => {
  const before = points.length;
  points = points.filter(p => p.id !== q.params.id);
  r.json({ deleted: before - points.length });
});

app.listen(PORT, HOST, () => {
  console.log(`Geospatial Map API on http://localhost:${PORT}`);
});

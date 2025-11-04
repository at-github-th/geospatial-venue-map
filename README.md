# Geospatial Venue Map

Language: Node.js (Express)

## How to run

API
```bash
cd geospatial-venue-map-native/api && npm i && node index.js
```

Web
```bash
cd geospatial-venue-map-native/web && python3 -m http.server 5507
```

Open http://localhost:5507

## Endpoints
- Map: GET /api/map\n- Heatmap: GET /api/heatmap\n- Point: GET /api/points/:id

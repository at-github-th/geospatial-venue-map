# Geospatial Venue Map

**Stack:** Node.js (Express)  
**API:** http://127.0.0.1:5107  
**Web:** http://localhost:5507

## Run (local)

### API
cd geospatial-venue-map-native/api && npm i && node index.js

### Web (static tester)
cd geospatial-venue-map-native/web && python3 -m http.server 5507

## Test
- **Ping:** curl -s http://127.0.0.1:5107 | jq .
- **Map cfg:** GET /api/map\n- **Heatmap:** GET /api/heatmap\n- **Point:** GET /api/points/:id


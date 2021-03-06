## How to get METAR data
The data in `weather.json` was generated with the following command: 
<br>

```bash
curl https://www.aviationweather.gov/cgi-bin/json/MetarJSON.php > weather.txt
```

<br>
The script provided by the Aviation Weather Center creates GeoJSON output from each site that has reported within the last two hours.
<br>

The following GeoJSON is a small sample of what was generated by the command above: 
<br>
```json
{ "type": "FeatureCollection",
  "features": [
  { "type": "Feature",
    "properties": {
      "data": "METAR",
      "beg_time": "1598441228",
      "end_time": "1598448428",
      "bbox": "-130.0000,20.0000,-60.0000,60.0000"
    }
  },
  { "type": "Feature",
    "id": "152320333",
    "properties": {
      "data": "METAR",
      "id": "KJFK",
      "site": "New York/Kennedy Int",
      "prior": 0,
      "obsTime": "2020-08-26T12:51:00Z",
      "temp": 21.7,
      "dewp": 11.1,
      "wspd": 11,
      "wdir": 310,
      "cover": "FEW",
      "cldCvg1": "FEW",
      "cldBas1": "35",
      "cldCvg2": "FEW",
      "cldBas2": "250",
      "visib": 10.00,
      "fltcat": "VFR",
      "altim": 1014.3,
      "slp": 1014.2,
      "rawOb": "KJFK 261251Z 31011KT 10SM FEW035 FEW250 22/11 A2995 RMK AO2 SLP142 T02170111 $"
    },
    "geometry": {
      "type": "Point",
      "coordinates": [-73.785,40.644]
    } 
  },
```

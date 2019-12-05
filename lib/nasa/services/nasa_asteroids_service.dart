import 'dart:convert';
import 'dart:io';

import 'package:fwa_playground/nasa/models/asteroid.dart';
import 'package:http/http.dart' as http;

import 'fake_response.dart';

abstract class NasaAsteroidService {
  Future<List<Asteroid>> getAsteroidsNearEarch();
}

class NasaAsteroidServiceImpl implements NasaAsteroidService {
  @override
  Future<List<Asteroid>> getAsteroidsNearEarch() async {
    Uri uri = Uri.https('api.nasa.gov', 'neo/rest/v1/feed', {
      'start_date': '2019-12-05',
      'end_date': '2019-12-06',
      'api_key': 'DEMO_KEY',
    });
    http.Response response = await http.get(uri);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      String json = response.body;
      List<Asteroid> asteroids = [];
      try {
        Map<String, dynamic> decodedJson = jsonDecode(json);
        Map<String, dynamic> datesDecoded = decodedJson['near_earth_objects'];
        datesDecoded.forEach((key, value) {
          // List<Map<String, dynamic>> decodedList = value as List<Map<String, dynamic>>;
          value.forEach((listItem) {
            asteroids.add(Asteroid.fromJson(listItem as Map<String, dynamic>));
          });
        });
      } catch (e) {
        print(e);
      }
      return asteroids;
    } else {
      throw HttpException('TBD');
    }
  }
}

class NasaAsteroidServiceMock implements NasaAsteroidService {
  @override
  Future<List<Asteroid>> getAsteroidsNearEarch() async {
    String json = getFakeAsteroidResponse();
    List<Asteroid> asteroids = [];
    try {
      Map<String, dynamic> decodedJson = jsonDecode(json);
      Map<String, dynamic> datesDecoded = decodedJson['near_earth_objects'];
      datesDecoded.forEach((key, value) {
        // List<Map<String, dynamic>> decodedList = value as List<Map<String, dynamic>>;
        value.forEach((listItem) {
          asteroids.add(Asteroid.fromJson(listItem as Map<String, dynamic>));
        });
      });
    } catch (e) {
      print(e);
    }

    return asteroids;
  }
}

/*
{
                "links": {
                    "self": "http://www.neowsapp.com/rest/v1/neo/3893729?api_key=DEMO_KEY"
                },
                "id": "3893729",
                "neo_reference_id": "3893729",
                "name": "(2019 WB5)",
                "nasa_jpl_url": "http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3893729",
                "absolute_magnitude_h": 24.367,
                "estimated_diameter": {
                    "kilometers": {
                        "estimated_diameter_min": 0.0355758247,
                        "estimated_diameter_max": 0.0795499624
                    },
                    "meters": {
                        "estimated_diameter_min": 35.5758247121,
                        "estimated_diameter_max": 79.5499624119
                    },
                    "miles": {
                        "estimated_diameter_min": 0.0221057858,
                        "estimated_diameter_max": 0.0494300397
                    },
                    "feet": {
                        "estimated_diameter_min": 116.7185887486,
                        "estimated_diameter_max": 260.9906986796
                    }
                },
                "is_potentially_hazardous_asteroid": false,
                "close_approach_data": [
                    {
                        "close_approach_date": "2019-12-06",
                        "close_approach_date_full": "2019-Dec-06 03:02",
                        "epoch_date_close_approach": 1575601320000,
                        "relative_velocity": {
                            "kilometers_per_second": "22.0431411982",
                            "kilometers_per_hour": "79355.3083133587",
                            "miles_per_hour": "49308.3025461534"
                        },
                        "miss_distance": {
                            "astronomical": "0.0478160438",
                            "lunar": "18.6004410382",
                            "kilometers": "7153178.304306706",
                            "miles": "4444778.8911603028"
                        },
                        "orbiting_body": "Earth"
                    }
                ],
                "is_sentry_object": false
            },
*/

import 'package:flutter_apps/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {

  WeatherModel(
      int id, String cityName, String main, String description, int pressure)
      : super(id, cityName, main, description, pressure);

  factory WeatherModel.fromJson(Map<String , dynamic> map) => WeatherModel(
      map['id'],
      map['name'],
      map['weather'][0]['main'],
      map['weather'][0]['description'],
      map['main']['pressure']);
}

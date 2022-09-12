import 'package:flutter_apps/domain/entities/weather_entity.dart';

abstract class DomainWeatherRepo{
  Future<WeatherEntity> getWeatherByCountryName(String countryName);
}
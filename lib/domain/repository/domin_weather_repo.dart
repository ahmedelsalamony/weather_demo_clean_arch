import 'package:flutter_apps/domain/entities/weather_entity.dart';

abstract class DomainWeatherRepo{
  WeatherEntity getWeatherByCountryName(String countryName);
}
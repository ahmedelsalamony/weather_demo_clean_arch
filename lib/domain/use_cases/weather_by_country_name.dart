import 'package:flutter_apps/domain/entities/weather_entity.dart';
import 'package:flutter_apps/domain/repository/domin_weather_repo.dart';

class WeatherByCountryName {
  final DomainWeatherRepo weatherRepo;

  WeatherByCountryName(this.weatherRepo);

  WeatherEntity execute(String countryName){
   return weatherRepo.getWeatherByCountryName(countryName);
  }
}
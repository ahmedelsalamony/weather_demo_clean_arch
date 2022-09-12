import 'package:flutter_apps/data/data_sources/remote_data_source.dart';
import 'package:flutter_apps/domain/entities/weather_entity.dart';
import 'package:flutter_apps/domain/repository/domin_weather_repo.dart';

import '../models/weather_model.dart';

class DataWeatherRepo extends DomainWeatherRepo {
   BaseRemoteWeatherDataSource baseRemoteWeatherDataSource;

   DataWeatherRepo(this.baseRemoteWeatherDataSource);

  @override
  Future<WeatherEntity> getWeatherByCountryName(String countryName) async {
    return (await baseRemoteWeatherDataSource.getWeatherFromRemote(countryName))!;
  }



}
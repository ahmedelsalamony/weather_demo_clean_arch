import 'package:dio/dio.dart';
import 'package:flutter_apps/data/models/weather_model.dart';

import '../../utils/constants/api_end_points.dart';
import '../../utils/constants/app_keys.dart';

abstract class BaseRemoteWeatherDataSource{
  Future<WeatherModel?> getWeatherFromRemote(String countryName);
}

class RemoteWeatherDataSource extends BaseRemoteWeatherDataSource{

  @override
  Future<WeatherModel?> getWeatherFromRemote(String countryName) async {
      try{
        var response = await Dio().get(EndPoints.weatherByCountryNameApi+ '&appid='+ AppKeys.apiKey);
        print(response);
        return WeatherModel.fromJson(response.data);
      } catch(e){
        print(e);
        return null;
      }
  }

}
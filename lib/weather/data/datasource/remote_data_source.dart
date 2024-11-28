import 'package:dio/dio.dart';
import 'package:weather_clean/core/utils/ApiConstants.dart';
import 'package:weather_clean/weather/data/models/weather_model.dart';

// contract between the remote data source and the repository
abstract class BaseRemoteDataSource{
    Future<WeatherModel> getWeatherByName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel>getWeatherByName(String cityName) async {
    try{
      final response = await Dio().get('${ApiConstants.BASE_URL}/weather?q=$cityName&appid=${ApiConstants.API_KEY}');
      print(response.data);
      return WeatherModel.fromJson(response.data);
    }
    catch(e){
      print(e);
      return WeatherModel(0, cityName: 'error', temperatureCelsius: 0, weatherDescription: 'error', main: 'error');
    }
    // if there is an error return an empty WeatherModel
  }


}
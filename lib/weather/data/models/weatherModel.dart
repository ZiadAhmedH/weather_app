import '../../domain/entities/weather.dart';

class WeatherModel extends Weather{
  WeatherModel(super.id, {required super.cityName, required super.temperatureCelsius, required super.weatherDescription, required super.main});

  factory WeatherModel.fromJson(Map<String, dynamic> json){
    return WeatherModel(
      json['id'],
      cityName: json['name'],
      main: json['weather'][0]['main'],
      weatherDescription: json['weather'][0]['description'],
      temperatureCelsius: json['main']['temp'].toDouble(),
    );
  }
}
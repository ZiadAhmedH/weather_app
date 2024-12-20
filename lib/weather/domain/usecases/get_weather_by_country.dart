import 'package:weather_clean/weather/domain/entities/weather.dart';

import '../repository/base_weather_Repository.dart';

class GetWeatherByCountry {
  final BaseWeatherRepository _weatherRepository;

  GetWeatherByCountry(this._weatherRepository);

  Future< Weather> call(String country) async {
    return await _weatherRepository.fetchWeather(country);
  }
}

// اhere we are creating a class that will be responsible for getting the weather by country and the presentation layer will call this class to get the weather by country
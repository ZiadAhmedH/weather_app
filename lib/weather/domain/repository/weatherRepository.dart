import '../entities/weatherModel.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

// this is an one of solid principle called dependency inversion principle where we are depending on abstraction rather than concrete implementation
// و لازم يكون layer تربط ما بين low layer و higher layer
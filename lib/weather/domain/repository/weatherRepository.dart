import '../entities/weather.dart';


// like a contract that any class that implements this interface should implement the fetchWeather method
abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

// this is an one of solid principle called dependency inversion principle where we are depending on abstraction rather than concrete implementation
// و لازم يكون layer تربط ما بين low layer و higher layer
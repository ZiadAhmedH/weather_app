import '../../domain/entities/weather.dart';
import '../../domain/repository/base_weather_Repository.dart';
import '../datasource/remote_data_source.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> fetchWeather(String cityName) async {
    return baseRemoteDataSource.getWeatherByName(cityName);
  }

}
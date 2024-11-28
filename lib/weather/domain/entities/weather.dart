class Weather {
  final int? id;
  final String? cityName;
  final double? temperatureCelsius;
  final String? main;
  final String? weatherDescription;

  Weather(this.id, {
    required this.cityName,
    required this.temperatureCelsius,
    required this.weatherDescription,
    required this.main,
  });


}
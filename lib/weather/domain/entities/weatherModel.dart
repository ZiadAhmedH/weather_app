class Weather {
  final int id;
  final String cityName;
  final double temperatureCelsius;
  final String weatherDescription;

  Weather(this.id, {
    required this.cityName,
    required this.temperatureCelsius,
    required this.weatherDescription,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      json['id'],
      cityName: json['name'],
      temperatureCelsius: json['main']['temp'].toDouble(),
      weatherDescription: json['weather'][0]['description'],
    );
  }
}
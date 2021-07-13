import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:meta_weather/feature/weather/domain/entity/index.dart';
import 'package:meta_weather/feature/weather/utils/temperature_utils.dart';

class WeatherDetailsWidget extends StatelessWidget {
  final WeatherEntity weather;
  final TemperatureUnit temperatureUnit;
  const WeatherDetailsWidget(
      {Key? key,
      required this.weather,
      this.temperatureUnit = TemperatureUnit.celsius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(DateFormat('EEEE').format(weather.day!),
                style: Theme.of(context).textTheme.headline3),
          ),
          Text(weather.formattedCondition ?? '',
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SvgPicture.network(
              'https://www.metaweather.com/static/img/weather/${weather.condition}.svg',
              height: 300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
                TemperatureUtils.getTemp(weather.minTemp ?? 0, temperatureUnit),
                style: Theme.of(context).textTheme.headline3),
          ),
          Text('Humidity: ${weather.humidity}%',
              style: Theme.of(context).textTheme.bodyText1),
          const SizedBox(
            height: 5,
          ),
          Text('Pressure: ${weather.airPressure} mb',
              style: Theme.of(context).textTheme.bodyText1),
          const SizedBox(
            height: 5,
          ),
          Text('Wind: ${weather.windSpeed?.toStringAsFixed(1)} % km/h',
              style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }
}

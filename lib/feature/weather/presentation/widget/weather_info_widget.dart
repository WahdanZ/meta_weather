import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/utils/temperature_utils.dart';

class WeatherInfoWidget extends StatelessWidget {
  final WeatherEntity weather;
  final TemperatureUnit temperatureUnit;
  const WeatherInfoWidget(
      {Key? key, required this.weather, required this.temperatureUnit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(DateFormat('EEEE').format(weather.day!),
                style: Theme.of(context).textTheme.subtitle1),
            Expanded(
              child: SvgPicture.network(
                'https://www.metaweather.com/static/img/weather/${weather.condition}.svg',
                height: 100,
              ),
            ),
            Text(
                '${TemperatureUtils.getTemp(weather.minTemp ?? 0, temperatureUnit)}/${TemperatureUtils.getTemp(weather.maxTemp ?? 0, temperatureUnit)}',
                style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/weather_details_cubit.dart';
import 'package:meta_weather/feature/weather/presentation/widget/index.dart';

class WeatherDetailsPage extends StatefulWidget {
  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  _WeatherDetailsPageState createState() => _WeatherDetailsPageState();
}

class _WeatherDetailsPageState extends State<WeatherDetailsPage> {
  final searchController = TextEditingController();
  late WeatherDetailsCubit weatherDetailsCubit;

  @override
  void initState() {
    super.initState();
    weatherDetailsCubit = inject();
  }

  @override
  Widget build(BuildContext context) {
    final location =
        ModalRoute.of(context)!.settings.arguments as LocationEntity?;

    return Scaffold(
      appBar: AppBar(
        title: Text(location?.name ?? ''),
        actions: [
          IconButton(
              onPressed: () async {
                await Navigator.of(context).pushNamed('/setting');
                weatherDetailsCubit.temperatureUpdate();
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              )),
        ],
      ),
      body: StateBuilder<WeatherDetailsModel, WeatherDetailsCubit>(
        cubit: weatherDetailsCubit..getWeather(location),
        onData: (context, result) => RefreshIndicator(
          onRefresh: () async => weatherDetailsCubit.getWeather(location),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: WeatherDetailsWidget(
                          weather: result.current,
                          temperatureUnit: result.temperatureUnit),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...result.list.map((e) => InkWell(
                                  onTap: () => weatherDetailsCubit.select(e),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: WeatherInfoWidget(
                                        weather: e,
                                        temperatureUnit:
                                            result.temperatureUnit),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onError: (_, __) => Center(
          child: ElevatedButton(
            onPressed: () => weatherDetailsCubit.getWeather(location),
            child: const Text('Retry'),
          ),
        ),
      ),
    );
  }
}

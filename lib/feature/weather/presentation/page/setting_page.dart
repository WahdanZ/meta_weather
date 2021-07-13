import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta_weather/base/di/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/setting_cubit.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late SettingCubit settingCubit;
  @override
  void initState() {
    super.initState();
    settingCubit = inject();
  }

  @override
  void dispose() {
    super.dispose();
    settingCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: BlocBuilder<SettingCubit, SettingState>(
        bloc: settingCubit..getTemperature(),
        builder: (context, state) {
          return Column(
            children: [
              RadioListTile(
                  value: TemperatureUnit.celsius,
                  groupValue: state.temperatureUnit,
                  title: Text(TemperatureUnit.celsius.inString),
                  onChanged: (value) {
                    settingCubit.setTemperature(TemperatureUnit.celsius);
                  }),
              RadioListTile(
                  value: TemperatureUnit.fahrenheit,
                  groupValue: state.temperatureUnit,
                  title: Text(TemperatureUnit.fahrenheit.inString),
                  onChanged: (value) {
                    settingCubit.setTemperature(TemperatureUnit.fahrenheit);
                  })
            ],
          );
        },
      ),
    );
  }
}

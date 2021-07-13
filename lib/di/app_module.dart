import 'package:injectable/injectable.dart';
import 'package:meta_weather/base/index.dart';

@module
abstract class LocalModule {
  @preResolve
  @prod
  @dev
  Future<CoreStore> get prefs => CoreStoreSharedPrefs.getInstance();
}

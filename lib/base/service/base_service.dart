// Package imports:
import 'package:logger/logger.dart';
import 'package:meta_weather/base/service/logger.dart';

class BaseService {
  BaseService({String? title}) {
    log = getLogger(
      title ?? runtimeType.toString(),
    );
  }

  late Logger log;
}

mixin BaseServiceMixin {
  void initLog() {
    logger = getLogger(
      runtimeType.toString(),
    );
  }

  Logger? logger;
}

import 'dart:convert';

import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {
  SimpleLogPrinter(this.className, {this.colorsEnabled = true}) {
    counter++;
  }

  static int counter = 0;

  final String className;
  final bool colorsEnabled;

  @override
  List<String> log(LogEvent event) {
    final logColor = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    const splitter = LineSplitter();
    final splitMessage = splitter.convert('$message');
    splitMessage[0] = '${'${DateTime.now()} '} $emoji $className-($counter) '
        '- ${splitMessage[0]}';
    if (colorsEnabled) {
      return splitMessage.map((line) => logColor!(line)).toList();
    }
    return splitMessage;
  }
}

Logger getLogger(String className, {LogPrinter? logPrinter}) {
  return Logger(printer: logPrinter ?? PrettyPrinter());
}

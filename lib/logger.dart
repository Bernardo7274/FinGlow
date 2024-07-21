import 'dart:developer' as developer;

class AppLogger {
  static void info(String message) {
    if (const bool.fromEnvironment('dart.vm.product') == false) {
      developer.log(message, level: 500, name: 'INFO');
    }
  }

  static void error(String message, [Object? error]) {
    if (const bool.fromEnvironment('dart.vm.product') == false) {
      developer.log(message, level: 1000, name: 'ERROR', error: error); // Custom log level
    }
  }
}

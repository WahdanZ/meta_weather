// Package imports:
import 'package:injectable/injectable.dart';

import 'core_store.dart';

@Singleton(as: CoreStore, env: [Environment.test])
class CoreStoreTest extends CoreStore {
  final Map<String, dynamic> _map = {};
  @override
  Future clear() async {
    _map.clear();
    return _map;
  }

  @override
  Future<bool> containsKey(String key) async {
    return _map.containsKey(key);
  }

  @override
  Future get(String key) async {
    return _map[key];
  }

  @override
  Future<bool?> getBool(String key) async {
    return _map[key];
  }

  @override
  Future<double?> getDouble(String key) async {
    return _map[key];
  }

  @override
  Future<int?> getInt(String key) async {
    return _map[key];
  }

  @override
  Future<String?> getString(String key) async {
    return _map[key];
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    return _map[key];
  }

  @override
  Future? remove(String key) {
    return _map.remove(key);
  }

  @override
  Future? setBool(String key, {bool value = false}) {
    _map[key] = value;
    return _map[key];
  }

  @override
  Future? setDouble(String key, double value) {
    _map[key] = value;
    return _map[key];
  }

  @override
  Future? setInt(String key, int? value) {
    _map[key] = value;
    return _map[key];
  }

  @override
  Future? setString(String key, String? value) {
    _map[key] = value;
    return _map[key];
  }

  @override
  Future? setStringList(String key, List<String> values) {
    _map[key] = values;
    return _map[key];
  }
}

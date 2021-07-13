// Package imports:
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'core_store.dart';

class CoreStoreSharedPrefs implements CoreStore {
  CoreStoreSharedPrefs._internal(this._store);

  static late CoreStoreSharedPrefs _instance;

  final SharedPreferences _store;

  @override
  Future<bool> clear() {
    return _store.clear();
  }

  @override
  Future<bool> containsKey(String key) async {
    return Future<bool>.value(_store.containsKey(key));
  }

  @override
  Future<dynamic> get(String key) async {
    return _store.get(key);
  }

  @override
  Future<bool?> getBool(String key) async {
    final storedItem = _store.getBool(key);
    return storedItem;
  }

  @override
  Future<double?> getDouble(String key) async {
    final storedItem = _store.get(key) as double?;
    return storedItem;
  }

  @override
  Future<int?> getInt(String key) async {
    final storedItem = _store.get(key) as int?;
    return storedItem;
  }

  @override
  Future<String?> getString(String key) async {
    final storedItem = _store.get(key) as String?;
    return storedItem;
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    final storedItem = _store.getStringList(key);
    return storedItem;
  }

  @override
  Future<void> remove(String key) async {
    await _store.remove(key);
    return;
  }

  @override
  Future<void> setBool(String key, {bool value = false}) {
    return _store.setBool(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) {
    return _store.setDouble(key, value);
  }

  @override
  Future<void> setInt(String key, int? value) {
    return _store.setInt(key, value!);
  }

  @override
  Future<void> setString(String key, String? value) {
    return _store.setString(key, value!);
  }

  @override
  Future<void> setStringList(String key, List<String> values) {
    return _store.setStringList(key, values);
  }

  static Future<CoreStore> getInstance(
      {SharedPreferences? store, String password = 'flutter_sdk'}) async {
    store ??= await SharedPreferences.getInstance();
    _instance = CoreStoreSharedPrefs._internal(store);
    return _instance;
  }

  static Future<void> deleteAppDir() async {
    final appDir = await getApplicationSupportDirectory();

    if (appDir.existsSync()) {
      appDir.deleteSync(recursive: true);
    }
  }
}

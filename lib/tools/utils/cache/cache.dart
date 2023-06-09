import 'package:shared_preferences/shared_preferences.dart';
import 'package:station_service_mobile/tools/utils/cache/cache_keys.dart';

abstract class Cache {
  Cache._();
  static Future<bool> setString(CacheKey key, String value) async {
    var pref = await SharedPreferences.getInstance();
    return pref.setString(key.name, value);
  }

  static Future<String?> getString(CacheKey key) async {
    var pref = await SharedPreferences.getInstance();
    return pref.getString(key.name);
  }

  static Future<bool> setBool(CacheKey key, bool value) async {
    var pref = await SharedPreferences.getInstance();
    return pref.setBool(key.name, value);
  }

  static Future<bool?> getBool(CacheKey key) async {
    var pref = await SharedPreferences.getInstance();
    return pref.getBool(key.name);
  }

  static Future<bool> setDateTime(CacheKey key, DateTime? value) async {
    var pref = await SharedPreferences.getInstance();
    if (value == null) {
      return pref.remove(key.name);
    }
    return pref.setString(key.name, value.toString());
  }

  static Future<DateTime?> getDateTime(CacheKey key) async {
    var pref = await SharedPreferences.getInstance();
    return DateTime.tryParse(pref.getString(key.name).toString());
  }

  static Future<bool> remove(CacheKey key) async {
    var pref = await SharedPreferences.getInstance();
    return pref.remove(key.name);
  }

  static Future<bool> clear() async {
    var pref = await SharedPreferences.getInstance();
    await pref.remove("userId");
    await pref.remove("navigation");
    await pref.remove("dateNextGame");
    await pref.remove("userPrenom");
    return true;
  }
}

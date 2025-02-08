import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:the_good_doctor/core/networking/dio_factory.dart';

class SharedPref {
  SharedPref._();

  /// Saves a [value] with a [key] in the SharedPreferences.
  static Future setValue(String key, dynamic value) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case String:
        return sharedPreferences.setString(key, value);
      case int:
        return sharedPreferences.setInt(key, value);
      case double:
        return sharedPreferences.setDouble(key, value);
      case bool:
        return sharedPreferences.setBool(key, value);
      default:
        return sharedPreferences.setString(key, value);
    }
  }

  /// Gets an String value from SharedPreferences with given [key].
  static Future<String?> getString(String key) async {
    debugPrint('SharedPrefHelper : getString with key : $key');
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    return sharedPreferences.getString(key) ?? '';
  }

  /// Gets an Int value from SharedPreferences with given [key].
  static Future<int?> getInt(String key) async {
    debugPrint('SharedPrefHelper : getInt with key : $key');
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    return sharedPreferences.getInt(key) ?? 0;
  }

  /// Gets an Double value from SharedPreferences with given [key].
  static Future<double?> getDouble(String key) async {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(key) ?? 0.0;
  }

  /// Gets an bool value from SharedPreferences with given [key].
  static Future<bool?> getBool(String key) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key) ?? false;
  }

  /// Removes all keys and values in the SharedPreferences
  static Future<void> clear() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  /// Removes a value from SharedPreferences with given [key].
  Future<void> removeValue(String key) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }

  /// Set Secure String with [key]
  static Future<void> setSecureString(String key, dynamic value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    DioFactory.setTokenIntoHeaderAfterLogin(value);
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// get Secure String with [key]
  static Future<String> getSecureString(String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    return await flutterSecureStorage.read(key: value) ?? '';
  }

  /// Delete Secure String with [key]
  static Future<void> deleteSecureString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.delete(key: key);
  }
}

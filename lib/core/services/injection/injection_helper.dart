import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ghardoctor/core/services/api_service/api_service.dart';
import 'package:ghardoctor/core/services/sharepref/flutter_secure_storage.dart';
import 'package:ghardoctor/core/services/sharepref/share_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> configureDependencies() async {
  try {
    //register shared preference
    final sharedPreferences = await SharedPreferences.getInstance();
    locator.registerLazySingleton<PrefHelper>(
      () => PrefHelper(sharedPreferences),
    );

    // register flutter secure storage
    locator.registerLazySingleton<SecureStorageHelper>(
      () => SecureStorageHelper.instance,
    );

    locator.registerLazySingleton<APIProvider>(() => APIProvider());
  } catch (e) {
    debugPrint('Error configuring dependencies: $e');
  }
}

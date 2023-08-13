import 'package:flutter_base/navigation/app_router.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @lazySingleton
  AppRouter get router => AppRouter();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

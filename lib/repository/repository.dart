import 'dart:ffi';

import 'package:flutter_base/repository/api/api_service.dart';
import 'package:flutter_base/repository/preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';

abstract class IRepository {
  Future<void> login(String username, String password);
  Future<void> logout();
  bool isUserLoggedIn();
}

@LazySingleton(as: IRepository)
class Repository implements IRepository {
  final ApiService _apiService;
  final ISharedPreferencesManager _preferencesManager;

  Repository(this._apiService, this._preferencesManager);

  @override
  Future<void> login(String username, String password) async {
    _preferencesManager.setUserLoggedIn();
    Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> logout() async {
    _preferencesManager.setUserLoggedOut();
  }

  @override
  bool isUserLoggedIn() {
    return _preferencesManager.isUserLoggedIn();
  }
}

import 'package:flutter_base/navigation/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {

  @lazySingleton
  AppRouter get router => AppRouter();
}
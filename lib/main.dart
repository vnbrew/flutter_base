import 'package:flutter/material.dart';
import 'package:flutter_base/app.dart';
import 'package:flutter_base/app/app.dart';
import 'package:flutter_base/app/app_bloc.dart';
import 'package:flutter_base/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppBloc>(),
      child: const AppView(),
    );
  }
}

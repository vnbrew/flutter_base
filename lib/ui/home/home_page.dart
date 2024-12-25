import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';
import 'package:flutter_base/navigation/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const DetailRoute());
                },
                child: Text(context.loc.detail),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const DownloadRoute());
                },
                child: Text(context.loc.download),
              )
            ],
          ),
        ),
      ),
    );
  }
}

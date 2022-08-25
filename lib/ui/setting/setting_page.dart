import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../navigation/app_router.gr.dart';

class SettigPage extends StatelessWidget {
  const SettigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Setting",
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const AboutRoute());
                },
                child: const Text("About"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
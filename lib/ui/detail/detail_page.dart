import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';
import 'package:flutter_base/navigation/app_router.gr.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(title: Text(context.loc.detail)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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

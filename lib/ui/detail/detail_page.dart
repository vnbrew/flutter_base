import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/navigation/app_router.gr.dart';

import '../../app/utils/gen/localized/l10n.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalized.current.detail,
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const DownloadRoute());
                },
                child: Text(AppLocalized.current.download),
              )
            ],
          ),
        ),
      ),
    );
  }
}

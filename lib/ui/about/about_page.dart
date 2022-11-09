import 'package:flutter/material.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(title: Text(context.loc.about)),
      body: displayMarkdown(context, "en.md"),
    );
  }

  FutureBuilder<String> displayMarkdown(BuildContext context, String file) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/about/$file"),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Markdown(data: snapshot.data ?? "");
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

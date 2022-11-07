import 'package:flutter/widgets.dart';
import 'package:flutter_base/app/utils/gen/localized/l10n.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalized get loc => AppLocalized.of(this);
}
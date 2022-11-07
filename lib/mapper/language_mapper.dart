import 'package:flutter_base/enum/constants.dart';
import 'package:injectable/injectable.dart';

import '../enum/enum.dart';

abstract class ILanguageMapper {
  LanguageCode mapToLanguageCode(String languageName);
  String mapToLanguageName(LanguageCode languageCode);
}

@Injectable(as: ILanguageMapper)
class LanguageMapper implements ILanguageMapper {
  @override
  LanguageCode mapToLanguageCode(String languageName) {
    switch (languageName) {
      case LanguageName.en:
        return LanguageCode.en;
      case LanguageName.vi:
        return LanguageCode.vi;
      default:
        return LanguageCode.en;
    }
  }

  @override
  String mapToLanguageName(LanguageCode languageCode) {
    switch (languageCode) {
      case LanguageCode.en:
        return LanguageName.en;
      case LanguageCode.vi:
        return LanguageName.vi;
      default:
        return '';
    }
  }
}

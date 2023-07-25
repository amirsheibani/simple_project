import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/locale/locale_configs.dart';
import '../../config/theme/app_theme.dart';

part 'language_theme_state.freezed.dart';

@freezed
class ThemeAndLanguageState with _$ThemeAndLanguageState {
  const factory ThemeAndLanguageState.idle() = ThemeAndLanguageStateIdle;

  const factory ThemeAndLanguageState.success({ThemeType? themeType, LanguageType? languageType}) = ThemeAndLanguageStateSuccess;

  const factory ThemeAndLanguageState.failed(String message) = ThemeAndLanguageStateFailed;
}

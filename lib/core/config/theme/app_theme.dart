import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ThemeType { dark, light }

extension AppTheme on ThemeData {
  Color get dark => brightness == Brightness.light ? const Color(0xFF060543) : const Color(0xFF060543);

  Color get white => brightness == Brightness.light ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);

  Color get blue => brightness == Brightness.light ? const Color(0xFF3181ED) : const Color(0xFF3181ED);

  Color get blue1 => brightness == Brightness.light ? const Color(0xFF2664FA) : const Color(0xFF2664FA);

  Color get blue2 => brightness == Brightness.light ? const Color(0xFF6EA9F6) : const Color(0xFF6EA9F6);

  Color get blue3 => brightness == Brightness.light ? const Color(0xFFA4CBFF) : const Color(0xFFA4CBFF);

  Color get blue4 => brightness == Brightness.light ? const Color(0xFFF5F8FE) : const Color(0xFFF5F8FE);

  Color get grey => brightness == Brightness.light ? const Color(0xFF9393AE) : const Color(0xFF9393AE);

  Color get softGrey => brightness == Brightness.light ? const Color(0xFFEDEDED) : const Color(0xFFEDEDED);

  Color get red => brightness == Brightness.light ? const Color(0xFFED3F31) : const Color(0xFFED3F31);

  Color get green => brightness == Brightness.light ? const Color(0xFF1BBE8E) : const Color(0xFF1BBE8E);

  Color get background => brightness == Brightness.light ? const Color(0xFFF4F6FA) : const Color(0xFFF4F6FA);

  Color get softYellow => brightness == Brightness.light ? const Color(0xFFF8E584) : const Color(0XFFF8E584);

  Color get softGreen => brightness == Brightness.light ? const Color(0xFFD0F5DE) : const Color(0XFFD0F5DE);

  Color get softRed => brightness == Brightness.light ? const Color(0xFFFFAB98) : const Color(0XFFFFAB98);

  TextTheme _getTextTheme(String? languageCode) {
    if (languageCode == 'ar') {
      String fontFamily = 'IranSans';
      return _getDefaultArabicTextTheme(dark, fontFamily);
    } else if (languageCode == 'fa') {
      String fontFamily = 'IranSans';
      return _getDefaultPersianTextTheme(dark, fontFamily);
    } else {
      String fontFamily = 'Roboto';
      return _getDefaultTextTheme(dark, fontFamily);
    }
  }

  ThemeData theme(String? languageCode) {
    return brightness == Brightness.light
        ? copyWith(
            scaffoldBackgroundColor: background,
            splashColor: background,
            backgroundColor: background,
            // primaryColor: Colors.grey.shade900,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: dark,
            ),
            textTheme: _getTextTheme(languageCode),
            appBarTheme: AppBarTheme(
              backgroundColor: blue,
              foregroundColor: blue,
              centerTitle: true,
              titleSpacing: 0,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: blue,
                systemNavigationBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: dark,
            ),
            iconTheme: iconTheme.copyWith(color: dark),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          )
        : copyWith(
            scaffoldBackgroundColor: background,
            splashColor: background,
            backgroundColor: background,
            // primaryColor: Colors.grey.shade900,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: dark,
            ),
            textTheme: _getTextTheme(languageCode),
            appBarTheme: AppBarTheme(
              backgroundColor: blue,
              foregroundColor: blue,
              centerTitle: true,
              titleSpacing: 0,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: blue,
                systemNavigationBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.light,
              ),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: dark,
            ),
            iconTheme: iconTheme.copyWith(color: dark),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          );
  }

  TextTheme _getDefaultTextTheme(Color color, String fontFamily) {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(height: 1.2, fontSize: 57, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displayMedium: textTheme.displayMedium?.copyWith(height: 1.2, fontSize: 45, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displaySmall: textTheme.displaySmall?.copyWith(height: 1.2, fontSize: 36, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineLarge: textTheme.headlineLarge?.copyWith(height: 1.2, fontSize: 32, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineMedium: textTheme.headlineMedium?.copyWith(height: 1.2, fontSize: 26, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineSmall: textTheme.headlineSmall?.copyWith(height: 1.2, fontSize: 24, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      titleLarge: textTheme.titleLarge?.copyWith(height: 1.2, fontSize: 20, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleMedium: textTheme.titleMedium?.copyWith(height: 1.2, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleSmall: textTheme.titleSmall?.copyWith(height: 1.2, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelLarge: textTheme.labelLarge?.copyWith(height: 1.2, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelMedium: textTheme.labelMedium?.copyWith(height: 1.2, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelSmall: textTheme.labelSmall?.copyWith(height: 1.2, fontSize: 12, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      bodyLarge: textTheme.bodyLarge?.copyWith(height: 1.2, fontSize: 11, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodyMedium: textTheme.bodyMedium?.copyWith(height: 1.2, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodySmall: textTheme.bodySmall?.copyWith(height: 1.2, fontSize: 9, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
    );
  }

  TextTheme _getDefaultPersianTextTheme(Color color, String fontFamily) {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(height: 1.4, fontSize: 30, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displayMedium: textTheme.displayMedium?.copyWith(height: 1.4, fontSize: 25, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displaySmall: textTheme.displaySmall?.copyWith(height: 1.4, fontSize: 20, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineLarge: textTheme.headlineLarge?.copyWith(height: 1.4, fontSize: 19, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineMedium: textTheme.headlineMedium?.copyWith(height: 1.4, fontSize: 18, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineSmall: textTheme.headlineSmall?.copyWith(height: 1.4, fontSize: 17, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      titleLarge: textTheme.titleLarge?.copyWith(height: 1.4, fontSize: 15, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleMedium: textTheme.titleMedium?.copyWith(height: 1.4, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleSmall: textTheme.titleSmall?.copyWith(height: 1.4, fontSize: 11, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelLarge: textTheme.labelLarge?.copyWith(height: 1.4, fontSize: 9, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelMedium: textTheme.labelMedium?.copyWith(height: 1.4, fontSize: 8, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelSmall: textTheme.labelSmall?.copyWith(height: 1.4, fontSize: 7, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      bodyLarge: textTheme.bodyLarge?.copyWith(height: 1.4, fontSize: 6, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodyMedium: textTheme.bodyMedium?.copyWith(height: 1.4, fontSize: 5, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodySmall: textTheme.bodySmall?.copyWith(height: 1.4, fontSize: 4, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
    );
  }

  TextTheme _getDefaultArabicTextTheme(Color color, String fontFamily) {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(height: 1, fontSize: 57, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displayMedium: textTheme.displayMedium?.copyWith(height: 1, fontSize: 45, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displaySmall: textTheme.displaySmall?.copyWith(height: 1, fontSize: 36, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineLarge: textTheme.headlineLarge?.copyWith(height: 1, fontSize: 32, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineMedium: textTheme.headlineMedium?.copyWith(height: 1, fontSize: 28, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineSmall: textTheme.headlineSmall?.copyWith(height: 1, fontSize: 24, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      titleLarge: textTheme.titleLarge?.copyWith(height: 1, fontSize: 22, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleMedium: textTheme.titleMedium?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleSmall: textTheme.titleSmall?.copyWith(height: 1, fontSize: 15, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelLarge: textTheme.labelLarge?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelMedium: textTheme.labelMedium?.copyWith(height: 1, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelSmall: textTheme.labelSmall?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      bodyLarge: textTheme.bodyLarge?.copyWith(height: 1, fontSize: 11, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodyMedium: textTheme.bodyMedium?.copyWith(height: 1, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodySmall: textTheme.bodySmall?.copyWith(height: 1, fontSize: 9, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
    );
  }
}

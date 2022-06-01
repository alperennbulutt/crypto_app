import 'package:crypto_app/routes/app_pages.dart';
import 'package:crypto_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: Locale('pt', 'BR'),
    //translationsKeys: AppTranslation.translations,
  ));
}

import 'package:flutter/material.dart';
import 'package:store_app/core/language/app_localizations.dart';
import 'package:store_app/core/style/theme/color_extension.dart';
import 'package:store_app/core/style/theme/assets_extension.dart';

extension ContextExt on BuildContext {
  // colors

  MyColors get color => Theme.of(this).extension<MyColors>()!;

  // images
  MyAssets get image => Theme.of(this).extension<MyAssets>()!;

  // langauge

  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  // routes
  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}

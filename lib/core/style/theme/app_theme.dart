import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';
import 'package:store_app/core/style/theme/color_extension.dart';
import 'package:store_app/core/style/theme/assets_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
  );
}

ThemeData lightTheme() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
  );
}

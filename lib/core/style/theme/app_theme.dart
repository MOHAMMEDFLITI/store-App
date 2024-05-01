import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';
import 'package:store_app/core/style/theme/color_extension.dart';
import 'package:store_app/core/style/theme/image_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark,MyImages.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
  );
}

ThemeData lightTheme() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light,MyImages.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
  );
}

import 'package:flutter/material.dart';
import 'package:store_app/core/style/images/app_images.dart';



// ctrl + shift + L == multi cursor
class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
  required this.bigNavBar,
  required this.homeBg,
  });

 final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<MyAssets> copyWith({
     String? bigNavBar,
    String? homeBg,
  }) {
    return MyAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<MyAssets> lerp(
      covariant ThemeExtension<MyAssets>? other, double t) {
    return MyAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const MyAssets dark = MyAssets(
    bigNavBar: AppImages.bigIconNavBarDark,
    homeBg: AppImages.homeBgDark,
  );
  static const MyAssets light = MyAssets(
    bigNavBar: AppImages.bigIconNavBarLight,
    homeBg: AppImages.homeBgLight,
  );
}

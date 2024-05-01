// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';
import 'package:store_app/core/language/app_localizations_setup.dart';
import 'package:store_app/core/routes/app_routes.dart';
import 'package:store_app/core/style/theme/app_theme.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, value, __) {
          if (value) {
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: MaterialApp(
                title: 'Store App',
                debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                theme: darkTheme(),
                builder: (context, widget) {
                  return GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Scaffold(
                      body: Builder(
                        builder: (context) {
                          ConnectivityController.instance.init();
                          return widget!;
                        },
                      ),
                    ),
                  );
                },
                onGenerateRoute: AppRoutes.onGenerateRoute,
                initialRoute: AppRoutes.testOne,
                locale: const Locale('en'), //lang that you use
                supportedLocales:
                    AppLocalizationsSetup.supportedLocales, //langs that you use
                localizationsDelegates: AppLocalizationsSetup
                    .localizationsDelegates, //langs and widgets
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
              ),
            );
          } else {
            return MaterialApp(
              title: 'No network',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              home: const NoNetworkScreen(),
            );
          }
        });
  }
}

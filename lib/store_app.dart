import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';
import 'package:store_app/core/style/fonts/font_familly_helper.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';

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
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                builder: (context, widget) {
                  return Scaffold(
                    body: Builder(
                      builder: (context) {
                        ConnectivityController.instance.init();
                        return widget!;
                      },
                    ),
                  );
                },
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text('Welcome'),
                  ),
                  body: const Center(
                    child: Column(
                      children: [
                        // old
                        Text(
                          'old font',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          ' 1 x الحمدلله',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        // new
                        Text(
                          'new font',
                          style: TextStyle(
                            fontFamily: FontFamillyHelper.poppinsEnglish,
                            fontWeight: FontWeightHelper.bold,
                            fontSize: 20,
                          ),
                            
                            
                        ),
                        Text(
                          ' 2 x الحمدلله',
                          style: TextStyle(
                            fontFamily: FontFamillyHelper.cairoArabic,
                            fontWeight: FontWeightHelper.regular,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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

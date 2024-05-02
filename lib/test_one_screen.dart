import 'package:flutter/material.dart';
import 'package:store_app/core/extension/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text(
          'Test one',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                //Navigator.of(context).pushNamed(AppRoutes.testTwo);
                context.pushName(AppRoutes.testTwo);
              },
              child: Text(
                'Test One',
                style: TextStyle(
                  color: context.color.mainColor,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Text(
            context.translate(LangKeys.appName),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          //Image.asset(context.image.testImage ?? ''),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/core/extension/context_extension.dart';
import 'package:store_app/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(
          'Test one',
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            //Navigator.of(context).pushNamed(AppRoutes.testTwo);
            context.pushName(AppRoutes.testTwo);
          },
          child: const Text(
            'Test Oneeee',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

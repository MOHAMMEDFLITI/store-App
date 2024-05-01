import 'package:flutter/material.dart';
import 'package:store_app/core/extension/context_extension.dart';

class TestTwoScreen extends StatelessWidget {
  const TestTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 117, 44, 39),
      appBar: AppBar(
        title: const Text(
          'Test two',
        ),
      ),
      body: Center(
        child: Text(
          'Test Two',
          style: TextStyle(
            color: context.color.mainColor,
            fontSize: 30,
          ),
        ),
      ),
    );
    ;
  }
}

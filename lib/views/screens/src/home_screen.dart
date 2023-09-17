import 'package:flutter/material.dart';
import 'package:hpos/views/view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('data'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hpos/views/view.dart';
import 'package:hpos/views/widgets/src/app_scaffold.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppCustomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('cart'),
          ],
        ),
      ),
    );
  }
}

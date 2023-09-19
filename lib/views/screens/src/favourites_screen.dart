import 'package:flutter/material.dart';
import 'package:hpos/views/view.dart';
import 'package:hpos/views/widgets/src/app_scaffold.dart';

class FavouritesScreen extends StatelessWidget {
  static const routeName = '/favourites';
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppCustomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('favourites'),
          ],
        ),
      ),
    );
  }
}

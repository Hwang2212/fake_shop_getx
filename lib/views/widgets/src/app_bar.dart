import 'package:flutter/material.dart';

class AppCustomBar extends StatelessWidget implements PreferredSizeWidget {
  const AppCustomBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.brown[100],
      elevation: 1,
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/texts/app_texts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFF5353),
      title: Text(
        AppTexts.homework.toUpperCase(),
        style: const TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

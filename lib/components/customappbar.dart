import 'package:flutter/cupertino.dart';

import '../utils/export.dart';

class Customappbar extends StatelessWidget {
  String text;
  List<Widget>  ? actions;
  Customappbar({required this.text, this.actions});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: const Color(0xFF242424),
      title: Text(text,
          style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: const Color(0xFF242424))),
      actions: actions,
    );
  }
}

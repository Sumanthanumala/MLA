import 'package:flutter/gestures.dart';

import '../utils/export.dart';

class Customtext extends StatelessWidget {
  String text;
  String colortext;
  VoidCallback ontap;

  Customtext(
      {required this.text, required this.colortext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: text,
            style: TextStyle(
                fontFamily: 'Objectivity',
                fontWeight: FontWeight.w500,
                fontSize: 10.sp,
                color: const Color(0xFFA1A1A1))),
        TextSpan(
            text: colortext,
            recognizer: TapGestureRecognizer()..onTap = ontap,
            style: TextStyle(
                fontFamily: 'Objectivity',
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color(0xFFED048D)))
      ]),
    );
  }
}

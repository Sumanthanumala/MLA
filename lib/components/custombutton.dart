import '../utils/export.dart';

class Custombutton extends StatelessWidget {
  String text;
  VoidCallback ontap;


  Custombutton({required this.text,required this.ontap,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFED048D),
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: BorderSide(width: 1.sp,color: const Color(0xFFED048D))),
        ),
        onPressed: ontap,
        child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: Colors.white),
        ));
  }
}
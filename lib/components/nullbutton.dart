import '../utils/export.dart';

class NullButton extends StatelessWidget {
String text;
NullButton({required this.text});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB6B9C7),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
                side: BorderSide(
                    color: const Color(0xFFB6B9C7),
                    width: 1.sp))),
        onPressed: null,
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: Colors.white),
        ));
  }
}

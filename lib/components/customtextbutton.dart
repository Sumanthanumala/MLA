import '../utils/export.dart';

class Customtextbutton extends StatelessWidget {
  IconData icon;
  String text;
  Customtextbutton ({super.key, required this.icon,required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.w,
      height: 22.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
              width: 1.sp, color: const Color(0xFFEFEFEF))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              size: 14.sp, color: const Color(0xFFED048D)),
          SizedBox(
            width: 12.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Objectivity',
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color(0xFFED048D)),
          )
        ],
      ),
    );
  }
}

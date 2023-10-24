import '../utils/export.dart';

class CustomSubtitle extends StatelessWidget {
  String text;
  CustomSubtitle({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 254.w,
          child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Objectivity',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: const Color(0xFF242424))),
        ),
        SizedBox(
          width: 31.w,
        ),
        Column(
          children: [
            Text('Today',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: const Color(0xFF686868))),
            SizedBox(height: 4.h),
            Text('10:30 AM',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: const Color(0xFF686868)))
          ],
        )
      ],
    );
  }
}

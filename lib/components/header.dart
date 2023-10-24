import '../utils/export.dart';

class header extends StatelessWidget {
  String title;
  String subtitle;

  header({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Colors.black),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          subtitle,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              fontFamily: 'Objectivity',
              color: const Color(0xFF7E91AE)),
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}

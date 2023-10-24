import '../utils/export.dart';

class CustomDashboardAppbar extends StatelessWidget {

  VoidCallback ontap;

  CustomDashboardAppbar({required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'MEE MLA',
          style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w700,
              color: const Color(0xFF242424),
              fontSize: 16.sp),
        ),
        SizedBox(
          width: 177.w,
        ),
        InkWell(onTap: ontap,
          child: Icon(Icons.add,
              size: 24.sp, color: const Color(0xFF242424)),
        ),
        SizedBox(
          width: 20.w,
        ),
        Notificationicon()
      ],
    );
  }
}

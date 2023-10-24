import '../../utils/export.dart';

class CreatepollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: 'Create Poll')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(children: [
          SizedBox(height: 32.h,),
          Text(
            'Create Poll',
            style: TextStyle(
                fontFamily: 'Objectivity',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: const Color(0xFF242424)),
          ),
          SizedBox(height: 21.h,),
        ]),
      ),
    );
  }
}
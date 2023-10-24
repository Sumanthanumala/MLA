import '../../utils/export.dart';

class Schemespage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            CustomDashboardAppbar(
              ontap: () => Get.toNamed(Kcreatescheme),
            ),
            schemefeed()
          ],
        ),
      )),
    );
  }

  schemefeed() {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                CustomSubtitle(
                    text:
                        'Government has launched revised guideline for MPLADS 2023'),
                SizedBox(
                  height: 4.h,
                ),
                Text('Hyderabad',
                    style: TextStyle(
                      fontFamily: 'Objectivity',
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      color: const Color(0xFFED048D),
                    )),
                SizedBox(
                  height: 16.h,
                ),
                Stack(alignment: AlignmentDirectional.topEnd,
                  children: [
                    SizedBox(
                      width: 328.w,
                      height: 111.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          'assets/images/schemesample.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    InkWell(onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w,top: 10.h),
                        child: SizedBox(width: 24.w,height: 24.h,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(2.sp),
                                child: Icon(Icons.more_vert,
                                    size: 20.sp, color: const Color(0xFFED048D)),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23.h,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => Divider(
                color: const Color(0xFF979797),
                thickness: 0.4,
                height: 0.sp,
              ),
          itemCount: 4),
    );
  }
}

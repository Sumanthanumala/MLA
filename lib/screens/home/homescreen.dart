import 'package:flutter/cupertino.dart';
import '../../utils/export.dart';

class Homepage extends StatelessWidget {
  Homepagecontroller homepagecontroller = Get.put(Homepagecontroller());
  Splashcontroller splashcontroller = Get.put(Splashcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              height: 10.h,
            ),
            Row(children: [
              InkWell(onTap: () => Get.toNamed(Kprofile),
                child: Row(
                  children: [
                    Container(
                      width: 38.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: const Color(0xFFD9D9D9),
                      ),
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Hi, ',
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: Colors.black)),
                      TextSpan(
                          text: 'Kishore',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp)),
                    ])),
                  ],
                ),
              ),
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 19.h,
                      child: InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/calender.png')),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Notificationicon()
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 328.w,
              height: 135.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFFFFEFF8)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 11.w, top: 12.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.error_outline_rounded,
                            color: Color(0xFFED048D),
                            size: 20.sp,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            'Announcement',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                color: const Color(0xFF333333),
                                fontFamily: 'Objectivity'),
                          ),
                          SizedBox(
                            width: 106.w,
                          ),
                          Text(
                            '06-03-23',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp,
                                color: const Color(0xFF575757),
                                fontFamily: 'Objectivity'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.w),
                      child: Text(
                          '.  MPLADS 2023 కోసం ప్రభుత్వం సవరించిన \n   మార్గదర్శకాలను ప్రారంభించింది',
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: const Color(0xFF767676))),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.w),
                      child: Text('.  MPLADS of Parliament Local.....',
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: const Color(0xFF767676))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 288.w, right: 16.w),
                      child: SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: IconButton(
                            splashRadius: 0.1,
                            onPressed: () => Get.to(Announcementpage()),
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined)),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 26.h,
            ),
            Container(
              width: 328.w,
              height: 124.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: const [BoxShadow(color: Color(0xFFE9E9E9))],
                  border: Border.all(
                      color: const Color(0xFFF0F0F0),
                      width: 1.sp,
                      style: BorderStyle.solid)),
              child: Padding(
                padding: EdgeInsets.only(top: 12.h, left: 12.w, bottom: 12.h,right: 10.w),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      'assets/images/leader.png',
                      fit: BoxFit.cover,
                      width: 100.w,
                      height: 100.h,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 43.h,
                      ),
                      Text(
                        'BRS',
                        style: TextStyle(
                          fontFamily: 'Objectivity',
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: Color(0xFFED048D),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'N. Narender',
                        style: TextStyle(
                            fontFamily: 'Objectivity',
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Color(0xFF242424)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'MEE MLA - Warangal',
                        style: TextStyle(
                            fontFamily: 'Objectivity',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: const Color(0xFF727272)),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/logob&w.png',
                    width: 30.w,
                    height: 30.w,
                    fit: BoxFit.cover,
                  )
                ]),
              ),
            ),
            SizedBox(height: 50.h,),
            Text(
              'Reported',
              style: TextStyle(
                  fontFamily: 'Objectivity',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: const Color(0xFF242424)),
            ),
            SizedBox(height: 16.h,),
            SizedBox(height: 26.h,),
            Center(
              child: SizedBox(width: 165.w,height: 38.h,
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        backgroundColor: Colors.white,
                        shadowColor: const Color.fromRGBO(0, 0, 0, 0.15),
                        side: BorderSide(
                          width: 1.sp,
                          color: Color(0xFFED048D),
                        )),
                    onPressed: () => Get.toNamed(Kreportproblem),
                    child: Text(
                      'Report Problem',
                      style: TextStyle(
                        fontFamily: 'Objectivity',
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: Color(0xFFED048D),
                      ),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget Notificationicon() {
  return InkWell(
    onTap: () => Get.toNamed(Knotification),
    child: Stack(
      children: [
        Icon(
          CupertinoIcons.bell,
          size: 24.sp,
        ),
        Positioned(
            left: 13.w,
            top: 2.h,
            child: CircleAvatar(
              radius: 5.r,
              backgroundColor: const Color(0xFFFF7A00),
            ))
      ],
    ),
  );
}
import 'package:flutter/cupertino.dart';
import '../../utils/export.dart';

class Announcementpage extends StatelessWidget {
  Announcementpagecontroller announcementpagecontroller =
      Get.put(Announcementpagecontroller());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(44.h),
            child: Customappbar(
              text: 'Announcements',
              actions: [
                InkWell(
                    onTap: () {},
                    child: Icon(Icons.search_outlined, size: 24.sp)),
                SizedBox(
                  width: 16.w,
                ),
                InkWell(
                  onTap: () => Get.toNamed(Knotification),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h),
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
                              radius: 4.r,
                              backgroundColor: const Color(0xFFFF7A00),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.h,
                ),
              ],
            )),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    height: 38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r)),
                      color: const Color(0xFFF5F6FA),
                    ),
                    child: TabBar(
                        labelPadding: EdgeInsets.only(right: 1.sp),
                        labelColor: const Color(0xFFED048D),
                        unselectedLabelColor: const Color(0xFF808080),
                        indicatorColor: const Color(0xFFED048D),
                        unselectedLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700, fontSize: 12.sp),
                        labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700, fontSize: 12.sp),
                        indicatorSize: TabBarIndicatorSize.label,
                        physics: NeverScrollableScrollPhysics(),
                        tabs: const [
                          Tab(
                            text: 'All',
                          ),
                          Tab(
                            text: 'News',
                          ),
                          Tab(
                            text: 'Schemes',
                          ),
                          Tab(
                            text: 'Activities',
                          ),
                        ]),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 2, right: 14.w),
                      child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 7.5.h,
                                ),
                                Expanded(
                                  child: ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 24.5.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('By Kishore',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Objectivity',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xFF767676))),
                                                    Text('Today 10:30 AM',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Objectivity',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 8.sp,
                                                            color: const Color(
                                                                0xFF686868)))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text("MPLAD 2023",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Objectivity',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 13.sp,
                                                        color: const Color(
                                                            0xFF242424))),
                                                SizedBox(
                                                  height: 8.h,
                                                ),
                                                Text(
                                                    'MPLAD 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది ..... ',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Objectivity',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xFF242424))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                      'Read more',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Objectivity',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 10.sp,
                                                          color: const Color(
                                                              0xFFED048D)),
                                                    )),
                                                SizedBox(
                                                  height: 15.5.h,
                                                ),
                                              ]),
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          thickness: 0.4.sp,
                                          height: 0.sp,
                                          color: const Color(0xFF979797),
                                        );
                                      },
                                      itemCount: 6),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 7.5.h,
                                ),
                                Expanded(
                                  child: ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) => Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 24.5.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('By Kishore',
                                                    style: TextStyle(
                                                        fontFamily:
                                                        'Objectivity',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xFF767676))),
                                                Text('Today 10:30 AM',
                                                    style: TextStyle(
                                                        fontFamily:
                                                        'Objectivity',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 8.sp,
                                                        color: const Color(
                                                            0xFF686868)))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text("MPLAD 2023",
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Objectivity',
                                                    fontWeight:
                                                    FontWeight.w700,
                                                    fontSize: 13.sp,
                                                    color: const Color(
                                                        0xFF242424))),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Text(
                                                'MPLAD 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది ..... ',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Objectivity',
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xFF242424))),
                                            Align(
                                                alignment:
                                                Alignment.centerRight,
                                                child: Text(
                                                  'Read more',
                                                  style: TextStyle(
                                                      fontFamily:
                                                      'Objectivity',
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xFFED048D)),
                                                )),
                                            SizedBox(
                                              height: 15.5.h,
                                            ),
                                          ]),
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          thickness: 0.4.sp,
                                          height: 0.sp,
                                          color: const Color(0xFF979797),
                                        );
                                      },
                                      itemCount: 6),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 7.5.h,
                                ),
                                Expanded(
                                  child: ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) => Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 24.5.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('By Kishore',
                                                    style: TextStyle(
                                                        fontFamily:
                                                        'Objectivity',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xFF767676))),
                                                Text('Today 10:30 AM',
                                                    style: TextStyle(
                                                        fontFamily:
                                                        'Objectivity',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 8.sp,
                                                        color: const Color(
                                                            0xFF686868)))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text("MPLAD 2023",
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Objectivity',
                                                    fontWeight:
                                                    FontWeight.w700,
                                                    fontSize: 13.sp,
                                                    color: const Color(
                                                        0xFF242424))),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Text(
                                                'MPLAD 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది ..... ',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Objectivity',
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xFF242424))),
                                            Align(
                                                alignment:
                                                Alignment.centerRight,
                                                child: Text(
                                                  'Read more',
                                                  style: TextStyle(
                                                      fontFamily:
                                                      'Objectivity',
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xFFED048D)),
                                                )),
                                            SizedBox(
                                              height: 15.5.h,
                                            ),
                                          ]),
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          thickness: 0.4.sp,
                                          height: 0.sp,
                                          color: const Color(0xFF979797),
                                        );
                                      },
                                      itemCount: 6),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 7.5.h,
                                ),
                                Expanded(
                                  child: ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) => Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 24.5.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('By Kishore',
                                                    style: TextStyle(
                                                        fontFamily:
                                                        'Objectivity',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xFF767676))),
                                                Text('Today 10:30 AM',
                                                    style: TextStyle(
                                                        fontFamily:
                                                        'Objectivity',
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        fontSize: 8.sp,
                                                        color: const Color(
                                                            0xFF686868)))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text("MPLAD 2023",
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Objectivity',
                                                    fontWeight:
                                                    FontWeight.w700,
                                                    fontSize: 13.sp,
                                                    color: const Color(
                                                        0xFF242424))),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Text(
                                                'MPLAD 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది ..... ',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Objectivity',
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xFF242424))),
                                            Align(
                                                alignment:
                                                Alignment.centerRight,
                                                child: Text(
                                                  'Read more',
                                                  style: TextStyle(
                                                      fontFamily:
                                                      'Objectivity',
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xFFED048D)),
                                                )),
                                            SizedBox(
                                              height: 15.5.h,
                                            ),
                                          ]),
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          thickness: 0.4.sp,
                                          height: 0.sp,
                                          color: const Color(0xFF979797),
                                        );
                                      },
                                      itemCount: 6),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                left: 293.w,
                top: 587.h,
                child: SizedBox(
                  width: 48.w,
                  height: 48.w,
                  child: SpeedDial(
                      backgroundColor: const Color(0xFFED048D),
                      icon: Icons.add,
                      activeIcon: Icons.close,
                      activeBackgroundColor: const Color(0xFF727272),
                      overlayColor: const Color.fromRGBO(0, 0, 0, 0.4),
                      elevation: 0,
                      children: [
                        SpeedDialChild(
                            label: "+  Announcements",
                            onTap: () => Get.toNamed(Kcreateannouncement),
                            labelStyle: TextStyle(
                                fontFamily: 'Objectivity',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: const Color(0xFFED048D))),
                        SpeedDialChild(
                            label: "+  schemes",
                            onTap: () => Get.toNamed(Kcreatescheme),
                            labelStyle: TextStyle(
                                fontFamily: 'Objectivity',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: const Color(0xFFED048D))),
                        SpeedDialChild(
                            label: "+  Post",
                            onTap: () =>  Get.toNamed(Kcreatepost),
                            labelStyle: TextStyle(
                                fontFamily: 'Objectivity',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: const Color(0xFFED048D))),
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}
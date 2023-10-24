import '../../utils/export.dart';

class NotificationPage extends StatelessWidget {
   NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(
            text: 'Notification',
            actions: [
              InkWell(onTap: () {},
                  child: Icon(Icons.search_outlined, size: 24.sp)),
              SizedBox(
                width: 16.w,
              )
            ],
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 8.5.h),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 23.5.h,
                        ),
                        Stack(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 28.w,
                                  height: 28.h,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child:
                                      Image.asset('assets/images/profile.png'),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Kishore kumar ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                      color: const Color(0xFF242424),
                                      fontFamily: 'Objectivity'),
                                ),
                                Expanded(
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    "Today  10:30 AM",
                                    style: TextStyle(
                                      fontFamily: "Objectivity",
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff686868),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Positioned(left: 22.w,
                                child: SizedBox(
                                    height: 8.h,
                                    width: 8.w,
                                    child: const CircleAvatar(
                                      backgroundColor: Color(0xFF0AD02E),
                                    )))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "MPLAD 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకా లనుకోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప...",
                          style: TextStyle(
                            fontFamily: "Objectivity",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff242424),
                          ),
                        ),
                        SizedBox(
                          height: 24.5.h,
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                      color: const Color(0xFF979797),
                      thickness: 0.4.sp,
                      height: 0.h),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}

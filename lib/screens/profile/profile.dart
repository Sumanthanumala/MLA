import '../../utils/export.dart';

class ProfilePage extends StatelessWidget {
  EditProfilecontroller editProfilecontroller =
      Get.put(EditProfilecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: 'Profile')),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(children: [
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              Obx(() {
                final profile = editProfilecontroller.selectedprofile.value;
                return profile == null
                    ? Container(
                        width: 100.h,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ClipOval(
                            child: Image.asset('assets/images/profilepic.png',
                                fit: BoxFit.cover)),
                      )
                    : Container(
                        width: 100.h,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ClipOval(
                            child: Image.file(profile, fit: BoxFit.cover)),
                      );
              }),
              SizedBox(
                width: 16.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kishore',
                    style: TextStyle(
                      fontFamily: 'Objectivity',
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: const Color(0xFF242424),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'kishore0983@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Objectivity',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: const Color(0xFF727272)),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                      onTap: () => Get.toNamed(Keditprofile),
                      child: Customtextbutton(
                          icon: Icons.edit_outlined, text: 'Edit'))
                ],
              )
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          menu(),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 17.w, left: 1.w),
            child: Container(
              width: 326.w,
              height: 77.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromRGBO(0, 0, 0, 0.10),
                        blurRadius: 1.r,
                        spreadRadius: 3.r)
                  ],
                  image: DecorationImage(
                      image:
                          const AssetImage('assets/images/backgroundimage.png'),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.2), BlendMode.color)),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Surveys/Polls',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Objectivity',
                            fontSize: 16.sp,
                            color: const Color(0xFF242424))),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Last updated ',
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 8.sp,
                              color: const Color(0xFF727272)),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: const Color(0xFF727272)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  menu() {
    List Items = [
      {
        "Image": "assets/images/post.png",
        "name": "Posts",
        "routes":  Kcreatepost,
      },
      {
        "Image": "assets/images/schedule.png",
        "name": "Schedules",
        "routes":  Kcreatescheme,
      },
      {
        "Image": "assets/images/pinned.png",
        "name": "Pinned",
        "routes":  Kcreateannouncement,
      },
      {
        "Image": "assets/images/polls.png",
        "name": "Polls",
        "routes":  Ksurvey,
      }
    ];
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Items.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              InkWell(
                onTap: () => Get.toNamed(Items[index]["routes"]),
                child: Container(
                  width: 86.w,
                  height: 86.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                          color: const Color(0xFfEFEFEF), width: 1.sp)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Items[index]["Image"],
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          Items[index]["name"],
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: const Color(0xFF242424)),
                        )
                      ]),
                ),
              ),
              Container(
                width: 16.w,
              )
            ],
          );
        },
      ),
    );
  }
}

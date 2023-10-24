import '../../utils/export.dart';
import 'package:share_plus/share_plus.dart';

class Feedspage extends StatelessWidget {
  FeedsPageController feedsPageController = Get.put(FeedsPageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            CustomDashboardAppbar(
              ontap: () => Get.toNamed(Kcreatepost),
            ),
            Newsfeed(),
          ],
        ),
      )),
    );
  }

  Newsfeed() {
    List menuitems = [
      {
        'Icon': Icons.visibility_off_outlined,
        'name': 'Hide',
      },
      {
        'Icon': Icons.warning_amber_outlined,
        'name': 'Report',
      },
    ];
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset(
                        'assets/images/leader.png',
                        width: 38.w,
                        height: 38.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            child: Text(
                              'N.Narendra ',
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: const Color(0xFF303030)),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'MLA | ',
                                style: TextStyle(
                                    fontFamily: 'Objectivity',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: const Color(0xFF7E91AE)),
                              ),
                              Text(
                                'BRS',
                                style: TextStyle(
                                    fontFamily: 'Objectivity',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: const Color(0xFFED048D)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    PopupMenuButton(
                      iconSize: 20.sp,
                      icon: Icon(Icons.more_vert,
                          color: const Color(0xFFED048D), size: 20.sp),
                      position: PopupMenuPosition.under,
                      itemBuilder: (context) => menuitems
                          .map((e) => PopupMenuItem(
                                  child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(e['Icon'],
                                        size: 18.sp,
                                        color: e['name'] == 'Hide'
                                            ? const Color(0xFF242424)
                                            : const Color(0xFFFF505B)),
                                    SizedBox(
                                      width: 11.h,
                                    ),
                                    Text(e['name'],
                                        style: TextStyle(
                                            fontFamily: 'Objectivity',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF303030))),
                                  ],
                                ),
                              )))
                          .toList(),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomSubtitle(
                    text:
                        'Election Meeting with parliament Election Meeting with Parliament...'),
                SizedBox(
                  height: 16.h,
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    SizedBox(
                      width: 328.w,
                      height: 199.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          'assets/images/samplefeed.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      child: Row(
                        children: [
                          Obx(() => InkWell(
                              onTap: () {
                                feedsPageController.isliked.value =
                                    !feedsPageController.isliked.value;
                              },
                              child: feedsPageController.isliked.value == false
                                  ? Icon(
                                      Icons.favorite_border_rounded,
                                      size: 22.h,
                                      color: const Color(0xFFFFFFFF),
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      size: 22.sp,
                                      color: const Color(0xFFFF6161),
                                    ))),
                          SizedBox(
                            width: 24.w,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/chat.png',
                                width: 22.w, height: 22.h, fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/comment.png',
                              width: 22.w,
                              height: 22.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 160.w,
                          ),
                          InkWell(
                            onTap: () {
                              Share.shareXFiles([XFile('assets/hello.txt')], text: 'Great picture');
                            }
                             ,
                            child: Image.asset('assets/images/share.png',
                                width: 22.w, height: 22.h, fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
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

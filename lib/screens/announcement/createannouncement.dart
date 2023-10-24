import 'package:mla/controllers/createannouncementpagecontroller.dart';

import '../../utils/export.dart';

class CreateAnnouncementPage extends StatelessWidget {
  CreateAnnouncementPageController createAnnouncementPageController =
      Get.put(CreateAnnouncementPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: "Create Announcement")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(children: [
            SizedBox(
              height: 21.h,
            ),
            Customtextfield(
              text: 'Select Upload',
              hinttext: 'Create Announcement',
              color: Colors.black,
              readonly: true,
            ),
            SizedBox(
              height: 21.h,
            ),
            Customtextfield(
              text: 'Title',
              hinttext: "MLPADS",
              color: Colors.black,
              readonly: true,
            ),
            SizedBox(
              height: 21.h,
            ),
            Customtextfield(
              text: 'Description',
              onchanged: (value) {
                createAnnouncementPageController.dscrbfilled.value = value;
              },
              controller: createAnnouncementPageController.dscrbcontroller,
              hinttext: 'Please share what you’re thinking',
              height: 106.h,
              expands: true,
            ),
            SizedBox(
              height: 261.h,
            ),
            Obx(() => SizedBox(
                width: 328.w,
                height: 42.h,
                child: createAnnouncementPageController
                        .dscrbfilled.value.isNotEmpty
                    ? Custombutton(
                        text: 'Create Announcement',
                        ontap: () {},
                      )
                    : NullButton(text: 'Create Announcement')))
          ]),
        ),
      ),
    );
  }
}

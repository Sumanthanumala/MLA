import '../../utils/export.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilecontroller editProfilecontroller =
      Get.put(EditProfilecontroller());
  CreatePostPageController createPostPageController =Get.put(CreatePostPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: 'Edit Profile')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              Obx(() {
                final profileselected = createPostPageController.Image.value;
                return profileselected == null
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
                            child:
                                Image.file(profileselected, fit: BoxFit.cover)),
                      );
              }),
              SizedBox(
                width: 16.w,
              ),
              InkWell(
                  onTap: () =>
                      createPostPageController.selecteimage(ImageSource.gallery),
                  child: Customtextbutton(
                      icon: Icons.camera_alt_outlined, text: 'Profile')),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Customtextfield(
              text: 'Full Name',
              hinttext: "Full Name",
              controller: editProfilecontroller.fullnamecontroller),
          SizedBox(
            height: 32.h,
          ),
          Customtextfield(
              text: 'Mobile No',
              hinttext: "Mobile No",
              prefix: const Text('+91  '),
              controller: editProfilecontroller.mobilenumbercontroller),
          SizedBox(
            height: 32.h,
          ),
          Customtextfield(
              text: 'Email ID',
              hinttext: "example@gmail.com",
              controller: editProfilecontroller.emailidcontroller),
          SizedBox(
            height: 21.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.sp),
            child: Text('Gender',
                style: TextStyle(
                    fontFamily: 'Objectivity',
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    color: const Color(0xFF7E91AE))),
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              CustomGenderButton(text: 'Male'),
              SizedBox(
                width: 12.w,
              ),
              CustomGenderButton(text: 'Female'),
              SizedBox(
                width: 12.w,
              ),
              CustomGenderButton(text: 'Others')
            ],
          ),
          SizedBox(
            height: 121.h,
          ),
          SizedBox(
              width: 328.w,
              height: 42.h,
              child: Custombutton(
                text: 'Save Profile',
                ontap: () {},
              ))
        ]),
      ),
    );
  }
}
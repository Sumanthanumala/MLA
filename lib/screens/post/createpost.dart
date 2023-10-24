import '../../utils/export.dart';

class CreatePostPage extends StatelessWidget {
  CreatePostPageController createPostPageController =
      Get.put(CreatePostPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: "Create Post")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w), child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Obx(
              () => selectupload(
                  createPostPageController
                          .postdescriptionfilled.value.isNotEmpty &&
                      createPostPageController.Image.value != null,
                  'Create Post'),
            ),
            addphoto(),
            Tagfieldwidget(),
            SizedBox(
              height: 21.h,
            ),
            Customtextfield(
              controller: createPostPageController.postdescriptioncontroller,
              text: 'Description',
              onchanged: (value) {
                createPostPageController.postdescriptionfilled.value = value;
              },
              hinttext: 'Please share what you’re thinking',
              expands: true,
              height: 106.h,
            ),
            SizedBox(
              height: 80.h,
            ),
            Obx(() => SizedBox(
                width: 328.w,
                height: 42.h,
                child: createPostPageController
                            .postdescriptionfilled.value.isNotEmpty &&
                        createPostPageController.Image.value != null
                    ? Custombutton(
                        text: 'Create Post',
                        ontap: () {},
                      )
                    : NullButton(text: 'Create Post')))
          ]),
        ),
      ),
    );
  }
}

Widget addphoto() {
  CreatePostPageController createPostPageController =
      Get.put(CreatePostPageController());
  return Column(
    children: [
      Obx(
        () {
          final selectedimage = createPostPageController.Image.value;
          return selectedimage == null
              ? Container(
                  width: 328.w,
                  height: 190.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(
                          color: const Color(0xFFEFEFEF), width: 1.sp)),
                  child: InkWell(
                    onTap: () {
                      createPostPageController
                          .selecteimage(ImageSource.gallery);
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: const Icon(
                                Icons.camera_alt_outlined,
                                color: Color(0xFFED048D),
                              )),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Add a Photo',
                            style: TextStyle(
                                fontFamily: 'Objectivity',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: const Color(0xFFED048D)),
                          )
                        ]),
                  ),
                )
              : Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                        height: 190.h,
                        width: 328.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                                color: const Color(0xFFEFEFEF), width: 1.sp)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.r),
                            child: Opacity(
                              opacity: 0.8,
                              child: Image.file(
                                selectedimage,
                                fit: BoxFit.cover,
                              ),
                            ))),
                    InkWell(
                      onTap: () {
                        createPostPageController
                            .selecteimage(ImageSource.gallery);
                      },
                      child: Container(
                          width: 93.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 20.w,
                                    height: 20.h,
                                    child: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  'Add a Photo',
                                  style: TextStyle(
                                      fontFamily: 'Objectivity',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: const Color(0xFFFFFFFF)),
                                )
                              ])),
                    ),
                  ],
                );
        },
      ),
      SizedBox(
        height: 24.h,
      ),
      Divider(
        color: const Color(0xFF979797),
        thickness: 0.4.sp,
      ),
      SizedBox(
        height: 31.h,
      ),
    ],
  );
}

Widget selectupload(condition, String hinttext) {
  return condition
      ? SizedBox(height: 36.h)
      : Column(children: [
          SizedBox(
            height: 21.h,
          ),
          Customtextfield(
              text: 'Select Upload',
              hinttext: hinttext,
              color: Colors.black,
              readonly: true,
              suffixicon: SizedBox(
                  width: 18.w,
                  height: 18.h,
                  child: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFFED048D),
                  ))),
          SizedBox(
            height: 24.h,
          ),
        ]);
}

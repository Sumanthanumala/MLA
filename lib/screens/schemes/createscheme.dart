import '../../utils/export.dart';

class CreateSchemePage extends StatelessWidget {
  CreateSchemePagecontroller createSchemePagecontroller =
      Get.put(CreateSchemePagecontroller());
  CreatePostPageController createPostPageController =
      Get.put(CreatePostPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: "Create Scheme")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Obx(
              () => selectupload(
                  createSchemePagecontroller
                      .schemepincodefilled.value.isNotEmpty &&
                      createSchemePagecontroller
                          .schemestatefilled.value.isNotEmpty &&
                      createSchemePagecontroller
                          .schemecityfilled.value.isNotEmpty &&
                      createSchemePagecontroller
                          .schemedescriptionfilled.value.isNotEmpty &&
                      createPostPageController.Image.value != null,'Create Scheme'),
            ),
            addphoto(),
            Tagfieldwidget(),
            SizedBox(height: 21.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Customtextfield(
                    text: 'Pin code', hinttext: "Pin code", width: 158.w,
                  maxlength: 6,
                  keyboardtype: TextInputType.number,
                  controller:
                  createSchemePagecontroller.schemepincodecontroller,
                  onchanged: (value) {
                    createSchemePagecontroller.schemepincodefilled.value =
                        value;
                  },),
                Customtextfield(
                  text: 'City',
                  hinttext: "City",
                  width: 158.w,
                  controller:
                  createSchemePagecontroller.schemecitycontroller,
                  onchanged: (value) {
                    createSchemePagecontroller.schemecityfilled.value =
                        value;
                  },
                  suffixicon: SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFFED048D),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 21.h,
            ),
            Customtextfield(
              text: 'State',
              hinttext: 'State',
              suffixicon: SizedBox(
                  width: 18.w,
                  height: 18.h,
                  child: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFFED048D),
                  )),
              controller:
                  createSchemePagecontroller.schemedestatecontroller,
              onchanged: (value) {
                createSchemePagecontroller.schemestatefilled.value =
                    value;
              },

            ),
            SizedBox(
              height: 21.h,
            ),
            Customtextfield(
              controller:
                  createSchemePagecontroller.schemedescriptioncontroller,
              text: 'Description',
              onchanged: (value) {
                createSchemePagecontroller.schemedescriptionfilled.value =
                    value;
              },
              hinttext: 'Please share what you’re thinking',
              expands: true,
              height: 106.h,
            ),
            SizedBox(
              height: 43.h,
            ),
            Obx(() => SizedBox(
                width: 328.w,
                height: 42.h,
                child: createSchemePagecontroller
                            .schemepincodefilled.value.isNotEmpty &&
                        createSchemePagecontroller
                        .schemestatefilled.value.isNotEmpty &&
                    createSchemePagecontroller
                        .schemecityfilled.value.isNotEmpty &&
                        createSchemePagecontroller
                            .schemedescriptionfilled.value.isNotEmpty &&
                        createPostPageController.Image.value != null
                    ? Custombutton(
                        text: 'Create Post',
                        ontap: () {},
                      )
                    : NullButton(text: 'Create Post'))),
            SizedBox(
              height: 66.h,
            )
          ]),
        ),
      ),
    );
  }
}
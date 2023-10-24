import '../../utils/export.dart';

class Mobilelogin extends StatelessWidget {
  Mobilelogincontroller mobilelogincontroller = Get.put(Mobilelogincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20.h,
              ),
              InkWell(onTap: () => Get.back(),
                  child: Icon(Icons.arrow_back_outlined, size: 24.sp)),
              SizedBox(
                height: 16.h,
              ),
              header(
                  title: 'Enter Mobile Number',
                  subtitle:
                      'Input your mobile number on the screen for quick and secure account access.'),
              Obx(() =>Customtextfield(
                  keyboardtype: TextInputType.number,
                  maxlength: 10,
                  prefix: Padding(
                    padding: EdgeInsets.only(right:8.sp),
                    child: SizedBox(width: 32.h,height: 24.h,
                        child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('+91',
                                style: TextStyle(
                                    fontFamily: 'Objectivity',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color(0xFF242424))),
                            Text('|',style: TextStyle(color: Color(0xFFEFEFEF))),
                          ],
                        )),
                  ),
                  text: 'Mobile No',
                  errortext: mobilelogincontroller.mobileerror(),
                  hinttext: 'Enter Mobile Number',
                  controller: mobilelogincontroller.mobilenumcontroller)),
              SizedBox(
                height: 254.h,
              ),
              SizedBox(
                width: 328.w,
                height: 42.h,
                child: Custombutton(
                  text: 'Get OTP',
                  ontap:() => mobilelogincontroller.mobileverify(),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Center(child: Ortext()),
              SizedBox(
                height: 24.h,
              ),
              googleicon(),
              SizedBox(
                height: 16.h,
              ),
              Center(child: terms()),
            ]),
          ),
        ),
      ),
    );
  }
}

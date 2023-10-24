import 'package:mla/components/nullbutton.dart';

import '../../utils/export.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class Otppage extends StatelessWidget {
  Mobilelogincontroller _mobilelogincontroller = Get.put(Mobilelogincontroller());
  Otpcontroller otpcontroller = Get.put(Otpcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                    onTap: () => Get.back(),
                    child: Icon(Icons.arrow_back_outlined, size: 24.sp)),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                      fontFamily: 'Objectivity',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: const Color(0xFF242424)),
                ),
                SizedBox(
                  height: 8.h,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Sent to ',
                      style: TextStyle(
                        color: const Color(0xFF7E91AE),
                        fontFamily: 'Objectivity',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      )),
                  TextSpan(
                      text:
                          ' +91 ${_mobilelogincontroller.mobilenumcontroller.text}',
                      style: TextStyle(
                          fontFamily: 'Objectivity',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: const Color(0xFF242424)
                      ))
                ])),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: Container(
                    width: 248.w,
                    height: 146.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.sp),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 32.w, right: 32.w, top: 24.h, bottom: 12.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 184.w,
                            height: 50.h,
                            child: Obx(() => PinInputTextField(
                                pinLength: 4,onChanged: (value) {
                              otpcontroller.otpentered.value=value;
                            },
                                controller: otpcontroller.pincontroller,
                                decoration: BoxLooseDecoration(
                                    hintText: '----',
                                    errorText: otpcontroller.otperror(),
                                    hintTextStyle: TextStyle(
                                        fontFamily: 'Objectivity',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: const Color(0xFF242424)),
                                    radius: Radius.circular(5.r),
                                    textStyle: TextStyle(
                                      color: const Color(0xFF242424),
                                      fontFamily: 'Objectivity',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp,
                                    ),
                                    strokeColorBuilder: const FixedColorBuilder(
                                        Color(0xFFEFEFEF)))))
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          SizedBox(
                              height: 24.h,
                              width: 113.w,
                              child: Obx(() => RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: 'Resending OTP in ',
                                        style: TextStyle(
                                            fontFamily: 'Objectivity',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.sp,
                                            color: const Color(0xFFA1A1A1))),
                                    TextSpan(
                                        text: otpcontroller.start.value >= 10
                                            ? '${otpcontroller.start.value}s'
                                            : '0${otpcontroller.start.value}s',
                                        style: TextStyle(
                                            fontFamily: 'Objectivity',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.sp,
                                            color: const Color(0xFF242424)))
                                  ])))),
                          SizedBox(
                            height: 4.h,
                          ),
                          SizedBox(
                            width: 101.w,
                            height: 24.h,
                            child: InkWell(
                              onTap: () => Get.back(),
                              child: Text(
                                'Wrong Number?',
                                style: TextStyle(
                                    fontFamily: 'Objectivity',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.sp,
                                    color: const Color(0xFFED048D)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90.h,
                ),
                Center(
                  child: SizedBox(
                      height: 24.h,
                      width: 121.w,
                      child: Text(
                        'Didn’t receive the OTP?',
                        style: TextStyle(
                            fontFamily: 'Objectivity',
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                            color: Color(0xFFA1A1A1)),
                      )),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Obx(() =>
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                          width: 24.w,
                          height: 24.w,
                          child: Icon(Icons.refresh_outlined,
                              color: otpcontroller.start.value == 0
                                  ? const Color(0xFFED048D)
                                  : const Color(0xFFA1A1A1))),
                      SizedBox(
                        width: 4.w,
                      ),
                      SizedBox(
                          height: 24.h,
                          width: 47.w,
                          child: Center(
                            child: InkWell(
                              onTap: otpcontroller.start.value > 0
                                  ? null : () {
                                    otpcontroller.starttimer();
                                  },
                              child: Text(
                                'Resend',
                                style: TextStyle(
                                    fontFamily: 'Objectivity',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: otpcontroller.start.value == 0
                                        ? const Color(0xFFED048D)
                                        : const Color(0xFFA1A1A1)),
                              ),
                            ),
                          )),
                    ])),
                SizedBox(
                  height: 40.h,
                ),
                Obx(() => SizedBox(
                    width: 328.w,
                    child: otpcontroller.otpentered.value.length==4
                        ? Custombutton(text: 'Verify',
                      ontap: () => otpcontroller.otpverify(),)
                        : NullButton(text: 'Verify'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

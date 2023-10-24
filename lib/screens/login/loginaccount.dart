import '../../utils/export.dart';

class Loginaccount extends StatelessWidget {
  Loginaccountcontroller loginaccountcontroller = Get.put(Loginaccountcontroller());
  Createaccountcontroller  _createaccountcontroller=Get.put(Createaccountcontroller());

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
                  header(
                      title: 'Welcome to E-MLA',
                      subtitle:
                      'create an account now to get started on your health and happiness journey.'),
                  Obx(() =>Customtextfield(
                      text: 'Email ID',
                      hinttext: "Email address",
                      errortext: _createaccountcontroller.Error(),
                      controller: loginaccountcontroller.emailidcontroller)),
                  SizedBox(
                    height: 32.h,
                  ),
                  Obx(() => Customtextfield(
                      text: 'Password',
                      obscuretext: _createaccountcontroller.obscure.value,
                      maxlines: 1,
                      errortext: _createaccountcontroller.Error(),
                      hinttext: "Password (8+ characters)",
                      suffixicon: InkWell(
                        onTap: () {
                          _createaccountcontroller.obscure.value =
                          !_createaccountcontroller.obscure.value;
                        },
                        child: _createaccountcontroller.obscure.value == true
                            ? const Icon(
                          Icons.visibility_outlined,
                          color: Colors.black,
                        )
                            : const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black,
                        ),
                      ),
                      controller: loginaccountcontroller.passwordcontroller)),
                  Obx(() => Row(
                    children: [
                      Checkbox(
                          value: loginaccountcontroller.check.value,
                          onChanged: (value) {
                            loginaccountcontroller.check.value = value!;
                          },
                          activeColor: const Color(0XFFED048D),
                          side: BorderSide(
                              color: const Color(0xFFED048D),
                              width: 2.sp,
                              style: BorderStyle.solid),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r))),
                      Text('Remember me',
                          style: TextStyle(
                              fontFamily: 'Objectivity',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFA1A1A1))),
                    ],
                  )),
                  SizedBox(
                    height: 152.h,
                  ),
                  SizedBox(
                      width: 328.w,
                      child: Custombutton(
                        text: 'Sign In',
                        ontap: () => loginaccountcontroller.verify(),
                      )),
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
                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                      child: Customtext(
                        text: 'Login with ',
                        colortext: "Mobile No",
                        ontap: () => Get.offNamed(Kmobilelogin),
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}

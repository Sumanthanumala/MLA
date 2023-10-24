import '../../utils/export.dart';

class Createaccount extends StatelessWidget {
  Createaccountcontroller createaccountcontroller =
      Get.put(Createaccountcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 23.h,
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.black,
                          size: 24.sp,
                        )),
                    SizedBox(
                      width: 124.w,
                    ),
                    Customtext(
                      text: 'Already have an account? ',
                      colortext: "Sign In",
                      ontap: () => Get.offNamed(Kloginaccount),
                    )
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                header(
                    title: 'Welcome to E-MLA',
                    subtitle:
                        'create an account now to get started on your health and happiness journey.'),
                Obx(() => Customtextfield(
                    errortext: createaccountcontroller.Error(),
                    controller: createaccountcontroller.firstnamecontroller,
                    text: 'First Name',
                    hinttext: 'First Name')),
                SizedBox(
                  height: 32.h,
                ),
                Obx(() => Customtextfield(
                    errortext: createaccountcontroller.Error(),
                    controller: createaccountcontroller.lastnamecontroller,
                    text: 'Last Name',
                    hinttext: 'Last Name')),
                SizedBox(
                  height: 32.h,
                ),
                Obx(() => Customtextfield(
                    errortext: createaccountcontroller.Error(),
                    controller: createaccountcontroller.emailcontroller,
                    text: 'Email ID',
                    hinttext: "Email")),
                SizedBox(
                  height: 32.h,
                ),
                Obx(() => Customtextfield(
                    errortext: createaccountcontroller.Error(),
                    obscuretext: createaccountcontroller.obscure.value,
                    controller: createaccountcontroller.passwordcontroller,
                    text: 'Password',
                    maxlines: 1,
                    hinttext: "Password (8+ characters)",
                    suffixicon: InkWell(
                      onTap: () {
                        createaccountcontroller.obscure.value =
                            !createaccountcontroller.obscure.value;
                      },
                      child: createaccountcontroller.obscure.value == true
                          ? const Icon(
                              Icons.visibility_outlined,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.black,
                            ),
                    )
                )
                ),
                SizedBox(
                  height: 32.h,
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  width: 328.w,
                  height: 42.h,
                  child: Custombutton(
                    text: 'Sign Up',
                    ontap: () => createaccountcontroller.check(),
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
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: Customtext(
                      text: "Login with ",
                      colortext: "Mobile No",
                      ontap: () => Get.offNamed(Kmobilelogin)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

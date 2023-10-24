import '../../utils/export.dart';

class Logintypespage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(51.h),
          child: AppBar(
            backgroundColor: Colors.black,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(children: [
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 28.96.w, bottom: 45.31.h, left: 33.21.w, top: 28.79.h),
            child: Image.asset(
              'assets/images/login.png',
              width: 267.w,
              height: 255.h,
            ),
          ),
          Text(
            'Lorem Epson is a Dummy text',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Objectivity',
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: Colors.white),
          ),
          SizedBox(
            height: 36.h,
          ),
          SizedBox(
            width: 328.w,
            height: 42.h,
            child: Custombutton(
                text: 'Create an account',
                ontap: () => Get.toNamed(Kcreateaccount)),
          ),
          SizedBox(
            height: 24.h,
          ),
          Ortext(),
          SizedBox(
            height: 24.h,
          ),
          googleicon(),
          SizedBox(
            height: 16.h,
          ),
          terms(),
          SizedBox(
            height: 24.h,
          ),
          Customtext(
            text: 'Login with ',
            colortext: 'Mobile No',
            ontap: () => Get.toNamed(Kmobilelogin),
          ),
          SizedBox(
            height: 16.h,
          ),
          Customtext(
            text: 'Already have an account? ',
            colortext: 'Sign In',
            ontap: () => Get.toNamed(Kloginaccount),
          ),
        ]),
      ),
    );
  }
}

Widget Ortext() {
  return Text(
    'or',
    style: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
        color: const Color(0xFFA1A1A1)),
  );
}

Widget googleicon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 36.r,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset('assets/images/google.png'),
          ),
        ),
      ),
      SizedBox(
        width: 25.w,
      ),
      InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: const Color(0xFF3A559F),
          radius: 36.r,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/images/facebook.png'),
          ),
        ),
      ),
      SizedBox(
        width: 25.w,
      ),
      InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 36.r,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset('assets/images/apple.png'),
          ),
        ),
      ),
    ],
  );
}

Widget terms() {
  return RichText(
    text: TextSpan(children: [
      TextSpan(
          text: 'By registering you agree to our ',
          style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: const Color(0xFFA1A1A1))),
      TextSpan(
          text: 'Terms of Use',
          style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w700,
              fontSize: 10.sp,
              color: const Color(0xFFA1A1A1)))
    ]),
  );
}

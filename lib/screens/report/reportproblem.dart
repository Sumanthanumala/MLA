import '../../utils/export.dart';

class Reportproblem extends StatelessWidget {
  const Reportproblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: 'Report')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(children: [
          SizedBox(height: 24.h,),
          header(
              title: 'Welcome',
              subtitle:
                  "Please share your issue; we'll endeavor to provide \nthe best possible solution and assistance."),
          Customtextfield(text: 'Full Name', hinttext: "Full Name"),
          SizedBox(
            height: 21.h,
          ),
          Customtextfield(text: 'Mobile no', hinttext: 'Mobile no'),
          SizedBox(
            height: 21.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Customtextfield(
                  text: 'Pin Code', hinttext: 'Pin Code', width: 158.w),
              Customtextfield(
                  text: 'City',
                  hinttext: 'City',
                  width: 158.w,
                  suffixicon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: const Color(0xFFED048D),
                    size: 18.sp,
                  )),
            ],
          ),
          SizedBox(
            height: 21.h,
          ),
          Customtextfield(text: 'State', hinttext: 'State',suffixicon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: const Color(0xFFED048D),
            size: 18.sp,
          )),
          SizedBox(
            height: 21.h,
          ),
          Customtextfield(text: 'Full Address', hinttext: 'Full Address'),
          SizedBox(
            height: 21.h,
          ),
          Customtextfield(
            text: 'Report',
            hinttext: 'Please share your issue',
            expands: true,
            maxlines: null,
            height: 106.h,
          ),
          SizedBox(height: 36.h,),
          SizedBox(width: 328.w,height: 40.h,
              child: Custombutton(text: 'Submit Report', ontap: (){},))
        ]),
      ),
    );
  }
}

import '../../utils/export.dart';

class SurveyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: 'Create Surveys / Polls')),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(children: [
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Craft Engaging Surveys and Polls to Gather Insights and Enhance User Engagement.',
                style: TextStyle(
                    fontFamily: 'Objectivity',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF7E91AE)),
              ),
              SizedBox(height: 116.h,),
              Image.asset(
                'assets/images/survey.png',
                height: 294.h,
                width: 294.w,
                alignment: Alignment.center,
              ),

            ]),
          ),
          Positioned(
              left: 293.w,
              top: 587.h,
              child: SizedBox(
                width: 48.w,
                height: 48.w,
                child: SpeedDial(
                    backgroundColor: const Color(0xFFED048D),
                    icon: Icons.add,
                    activeIcon: Icons.close,
                    activeBackgroundColor: const Color(0xFF727272),
                    overlayColor: const Color.fromRGBO(0, 0, 0, 0.4),
                    elevation: 0,
                    children: [
                      SpeedDialChild(
                          label: "+  Surveys",
                          onTap: () => Get.toNamed(Kcreatesurvey),
                          labelStyle: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: const Color(0xFFED048D))),
                      SpeedDialChild(
                          label: "+  Poll",
                          onTap: () => Get.toNamed(Kcreatepoll),
                          labelStyle: TextStyle(
                              fontFamily: 'Objectivity',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: const Color(0xFFED048D))),
                    ]),
              )),
        ],
      ),
    );
  }
}
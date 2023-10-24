import 'package:flutter/cupertino.dart';
import '../../utils/export.dart';

class Dashboard extends StatelessWidget {
  Dashboardcontroller dashboardcontroller=Get.put(Dashboardcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => IndexedStack(
            index: dashboardcontroller.index.value,
            children: dashboardcontroller.screens)),
        bottomNavigationBar: Obx(() => SizedBox(
        height: 64.h,
        child: BottomNavigationBar(
            currentIndex: dashboardcontroller.index.value,
            onTap: (value) {
              dashboardcontroller.index.value=value;
            },
            showSelectedLabels: true,
            selectedItemColor: const Color(0xFFED048D),
            selectedLabelStyle: TextStyle(
                fontFamily: 'Objectivity',
                fontWeight: FontWeight.w700,
                fontSize: 12.sp),
            showUnselectedLabels: true,
            unselectedItemColor: const Color(0xFF444343),
            unselectedIconTheme: const IconThemeData(color: Color(0xFFB6B9C7)),
            unselectedLabelStyle: TextStyle(
                      fontFamily: 'Objectivity',
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 8.sp),
                    child: const Icon(CupertinoIcons.square_grid_2x2_fill),
                  ), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 8.sp),
                    child: const Icon(CupertinoIcons.cube_box),
                  ), label: 'Feeds'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 8.sp),
                    child: const Icon(Icons.text_snippet_rounded),
                  ), label: 'Schemes'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 8.sp),
                    child: const Icon(Icons.error_outline_outlined),
                  ), label: 'Report')
            ]),
      ))
    );
  }
}

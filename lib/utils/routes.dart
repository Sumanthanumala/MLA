import 'export.dart';

class Routes {
  static List<GetPage> routes = [
    GetPage(
      name: Klogintypes,
      transition: Transition.rightToLeft,
      page: () => Logintypespage(),
    ),
    GetPage(
      name: Kcreateaccount,
      transition: Transition.rightToLeft,
      page: () => Createaccount(),
    ),
    GetPage(
      name: Kloginaccount,
      transition: Transition.rightToLeft,
      page: () => Loginaccount(),
    ),
    GetPage(
      name: Kmobilelogin,
      transition: Transition.rightToLeft,
      page: () => Mobilelogin(),
    ),
    GetPage(
      name: Kotpverify,
      transition: Transition.rightToLeft,
      page: () => Otppage(),
    ),
    GetPage(
      name: Kdashboard,
      transition: Transition.rightToLeft,
      page: () => Dashboard(),
    ),
    GetPage(
      name: Knotification,
      transition: Transition.rightToLeft,
      page: () => NotificationPage(),
    ),
    GetPage(
      name: Kprofile,
      transition: Transition.rightToLeft,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: Keditprofile,
      transition: Transition.rightToLeft,
      page: () => EditProfilePage(),
    ),
    GetPage(
      name: Kcreatepost,
      transition: Transition.rightToLeft,
      page: () => CreatePostPage(),
    ),
    GetPage(
      name: Kcreatescheme,
      transition: Transition.rightToLeft,
      page: () => CreateSchemePage(),
    ),
    GetPage(
      name: Kcreateannouncement,
      transition: Transition.rightToLeft,
      page: () => CreateAnnouncementPage(),
    ),
    GetPage(
      name: Ksurvey,
      transition: Transition.rightToLeft,
      page: () => SurveyPage(),
    ),
    GetPage(
      name: Kcreatepoll,
      transition: Transition.rightToLeft,
      page: () => CreatepollPage(),
    ),
    GetPage(
      name: Kcreatesurvey,
      transition: Transition.rightToLeft,
      page: () => CreateSurveyPage(),
    ),
    GetPage(
      name: Kreportproblem,
      transition: Transition.rightToLeft,
      page: () => Reportproblem(),
    ),
  ];
}

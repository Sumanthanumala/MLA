import 'dart:async';
import '../utils/export.dart';

class Splashcontroller extends GetxController{
  var Keylogin="login";

  @override
  void onInit() {
    super.onInit();
    navigate();
  }

  Future<void> navigate() async {
    var pref= await SharedPreferences.getInstance();
    var isloggedin=pref.getBool(Keylogin);
    Timer(const Duration(seconds: 2), () {
      if(isloggedin!=null){
        if(isloggedin){
          Get.offNamed(Kdashboard);
        }
        else{
          Get.offNamed(Kloginaccount);
        }
      }
      else{
        Get.offNamed(Klogintypes);
      }
    });
  }
}
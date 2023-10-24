import 'dart:async';
import '../utils/export.dart';

class Otpcontroller extends GetxController{
  var pincontroller=TextEditingController();
  var start = 59.obs;
  var otpentered=''.obs;
  var otpreceived='1234';
  var otpvalid=false.obs;

  @override
  void onInit() {
    super.onInit();
    starttimer();
  }

  void starttimer() {
    start.value=59;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (start.value == 0) {
        timer.cancel();
      } else {
        start.value--;
      }
    });
  }

  void otpverify(){
    if(otpentered.value==otpreceived){
      otpvalid.value=false;
      Get.offAllNamed(Kdashboard);
    }
    else{
      otpvalid.value=true;
      otperror();
    }
  }
  String ? otperror() {
    if(otpvalid.value==true){
      return 'Enter valid OTP';
    }
    else{
      return null;
    }
  }
}
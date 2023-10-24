import '../utils/export.dart';

class Mobilelogincontroller extends GetxController{
  var mobilenumcontroller = TextEditingController();
  var mobilevalid=false.obs;
  
  void mobileverify() {
    if (mobilenumcontroller.text.isNotEmpty &&
        mobilenumcontroller.text.length == 10) {
      mobilevalid.value=false;
      Get.toNamed(Kotpverify);
    }
    else{
      mobilevalid.value=true;
      mobileerror();
    }
  }

  String ? mobileerror(){
    if(mobilevalid.value==true){
      return 'Enter correct Mobile number';
    }
    else{
      return null;
    }
  }
}
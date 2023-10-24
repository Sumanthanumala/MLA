import '../utils/export.dart';
import 'package:http/http.dart' as http;

class Createaccountcontroller extends GetxController {

  Apiservices apiservices = Get.put(Apiservices());

  var firstnamecontroller = TextEditingController();
  var lastnamecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var isvalid = false.obs;
  var emailvalid = false;
  var isapiloading = false.obs;
  var obscure=true.obs;

  void check() async {
    try {
      isapiloading.value=true;
      if (Validate(emailcontroller.text) &&
          firstnamecontroller.text.isNotEmpty &&
          lastnamecontroller.text.isNotEmpty &&
          passvalid(passwordcontroller.text)) {
          isvalid.value=false;
        http.Response response = await apiservices
            .postcalling("http://65.2.174.18:70/api/user/register/", 
            {
          "first_name": firstnamecontroller.text,
          "last_name": lastnamecontroller.text,
          "email": emailcontroller.text,
          "password": passwordcontroller.text,
        }
        );

        if (response.statusCode == 201) {
          debugPrint('Account created Successful');
          return Get.toNamed(Kloginaccount);
        }
        else {
          debugPrint('Account created Unsuccessful');
        }
      }
      else{
        isvalid.value=true;
        Error();
      }
    } catch (error) {
      Get.snackbar(error.toString(), "Enter valid details",
          snackPosition: SnackPosition.BOTTOM);
    }finally{
      isapiloading.value=false;
    }
  }

  String? Error() {
    if (isvalid.value == true) {
      return 'Please enter valid details';
    } else {
      return null;
    }
  }

  bool Validate(String email) {
    emailvalid = EmailValidator.validate(email);
    return emailvalid;
  }

  bool passvalid(String value) {
    return value.length >= 8 ? true : false;
  }
}
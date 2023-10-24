import '../utils/export.dart';
import 'package:http/http.dart' as http;

class Loginaccountcontroller extends GetxController {
  Apiservices apiservices = Get.put(Apiservices());
  final Createaccountcontroller _createaccountcontroller =
      Get.put(Createaccountcontroller());
  Splashcontroller splashcontroller = Get.put(Splashcontroller());
  var emailidcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var check = false.obs;
  var emailvalid = false;
  var errorvalid = false.obs;
  var data = {};
  var token;

  void verify() async {
    try {
      if (_createaccountcontroller.Validate(emailidcontroller.text) &&
          _createaccountcontroller.passvalid(passwordcontroller.text)) {
        _createaccountcontroller.isvalid.value = false;
        http.Response response = await apiservices.postcalling(
            "http://65.2.174.18:70/api/user/login/", {
          "email": emailidcontroller.text,
          "password": passwordcontroller.text
        });
        if (response.statusCode == 200) {
          data = jsonDecode(response.body);
          token = data["access"];
          print(token);
          print('hi');
      
          var pref = await SharedPreferences.getInstance();
          pref.setBool(splashcontroller.Keylogin, true);
          Get.toNamed(Kdashboard);
        } else {
          debugPrint('Login Unsuccessful');
        }
      } else {
        _createaccountcontroller.isvalid.value = true;
        _createaccountcontroller.Error();
      }
    } catch (error) {
      Get.snackbar(error.toString(), "Enter valid details",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

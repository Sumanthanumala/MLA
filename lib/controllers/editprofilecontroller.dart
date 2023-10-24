import 'dart:io';

import '../utils/export.dart';

class EditProfilecontroller extends GetxController{

  var fullnamecontroller = TextEditingController();
  var mobilenumbercontroller = TextEditingController();
  var emailidcontroller = TextEditingController();

  var selectedgender='Male'.obs;
  Rx<File?> selectedprofile = Rx<File?>(null) ;

}
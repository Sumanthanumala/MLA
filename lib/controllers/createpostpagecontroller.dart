import 'dart:io';
import 'package:textfield_tags/textfield_tags.dart';
import '../utils/export.dart';

class CreatePostPageController extends GetxController{

  Rx<File?> Image = Rx<File?>(null) ;
  var posttagcontroller = TextEditingController();
  var postdescriptioncontroller = TextEditingController();
  var posttagfilled=''.obs;
  var postdescriptionfilled=''.obs;

  Future<void> selecteimage(ImageSource source) async {
   final pickedimage = await ImagePicker().pickImage(source: source);
   if(pickedimage!=null){
     Image.value=File(pickedimage.path);
   }
  }
}
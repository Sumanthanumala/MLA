
import '../utils/export.dart';

class CustomGenderButton extends  StatelessWidget {
  String text;
  EditProfilecontroller editProfilecontroller=Get.put(EditProfilecontroller());
  CustomGenderButton({required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 40.h,width: 101.3.w,
      child: Obx(() => TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  side: BorderSide(
                      color:
                      editProfilecontroller.selectedgender.value ==
                          text
                          ? Color(0xFFED048D)
                          : Color(0xFFEFEFEF)))),
          onPressed: () =>
          editProfilecontroller.selectedgender.value = text,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Objectivity",
                fontSize:
                editProfilecontroller.selectedgender.value == text
                    ? 14.sp
                    : 12.sp,
                fontWeight:
                editProfilecontroller.selectedgender.value == text
                    ? FontWeight.w700
                    : FontWeight.w500,
                color:
                editProfilecontroller.selectedgender.value == text
                    ? Color(0xFFED048D)
                    : Color(0xFF242424)),
          ))));
  }
}

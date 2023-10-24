import 'package:mla/utils/export.dart';

class Customtextfield extends StatelessWidget {
  String text;
  String hinttext;
  Widget? suffixicon;
  TextEditingController? controller;
  bool? obscuretext;
  String? errortext;
  Widget? prefix;
  int? maxlength;
  TextInputType? keyboardtype;
  Function(String)? onchanged;
  bool? readonly;
  double? height;
  double? width;
  bool? expands;
  int? maxlines;
  Color? color;

  Customtextfield(
      {required this.text,
      required this.hinttext,
      this.suffixicon,
      this.controller,
      this.obscuretext,
      this.errortext,
      this.prefix,
      this.maxlength,
      this.expands,
      this.width,
      this.readonly,
      this.height,
      this.maxlines,
      this.color,
      this.keyboardtype,
      this.onchanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.sp),
          child: Text(text,
              style: TextStyle(
                  fontFamily: 'Objectivity',
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: const Color(0xFF7E91AE))),
        ),
        SizedBox(
          height: 4.h,
        ),
        SizedBox(
          width: width ?? 328.w,
          height: height ?? 40.h,
          child: TextField(
              onChanged: onchanged,
              keyboardType: keyboardtype,
              maxLength: maxlength,
              expands: expands ?? false,
              maxLines: maxlines,
              cursorColor: Colors.black45,
              controller: controller,
              obscuringCharacter: '*',
              readOnly: readonly ?? false,
              obscureText: obscuretext ?? false,
              textAlignVertical: TextAlignVertical.top,
              style: TextStyle(
                  fontFamily: 'Objectivity',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: const Color(0xFF242424)),
              decoration: InputDecoration(
                  hintText: hinttext,
                  counterText: '',
                  hintStyle: TextStyle(
                      fontFamily: 'Objectivity',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: color ?? const Color(0xFF7E91AE)),
                  errorText: errortext,
                  prefix: prefix,
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(bottom: 1.h, top: 1.h),
                    child: suffixicon,
                  ),
                  contentPadding: EdgeInsets.only(
                      left: 12.sp, top: 8.h, bottom: 8.h, right: 12.w),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: BorderSide(
                          color: const Color(0xFFEFEFEF),
                          width: 1.sp,
                          style: BorderStyle.solid)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: BorderSide(
                          color: const Color(0xFFEFEFEF),
                          width: 1.sp,
                          style: BorderStyle.solid)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: BorderSide(
                          color: const Color(0xFFEFEFEF),
                          width: 1.sp,
                          style: BorderStyle.solid)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: BorderSide(
                          color: const Color(0xFFEFEFEF),
                          width: 1.sp,
                          style: BorderStyle.solid)))),
        ),
      ],
    );
  }
}

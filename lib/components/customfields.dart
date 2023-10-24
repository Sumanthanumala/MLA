import '../utils/export.dart';

class CustomFields extends StatelessWidget {
  String titletext;
  String hinttext;
  double? height;
  bool? expands;
  EdgeInsetsGeometry? contentpadding;
  TextEditingController ? controller;
  Function(String) ? onchanged;

  CustomFields(
      {required this.titletext,
      required this.hinttext,
      this.height,
      this.expands,
        this.onchanged,
        this.controller,
      this.contentpadding});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Text(titletext,
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
          width: 328.w,
          height: height,
          child: TextField(
            controller: controller,
            onChanged: onchanged,
            style: TextStyle(
              fontFamily: 'Objectivity',
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: const Color(0xFF242424)),
            expands: expands ?? false,
            maxLines: null,
            cursorColor: Colors.black,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
                contentPadding: contentpadding,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(
                        color: const Color(0xFfEFEFEF), width: 1.sp)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(
                        color: const Color(0xFfEFEFEF), width: 1.sp)),
                hintText: hinttext,
                hintStyle: TextStyle(
                    fontFamily: 'Objectivity',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: const Color(0xFF7E91AE))),
          ),
        ),
      ],
    );
  }
}

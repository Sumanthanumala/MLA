import '../utils/export.dart';

class Tagfieldwidget extends StatelessWidget {
  TextfieldTagsController tagscontroller = TextfieldTagsController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.sp),
          child: Text('Tags',
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
          height: 40.h,
          child: TextFieldTags(
            textfieldTagsController: tagscontroller,
            inputfieldBuilder:
                (context, tec, fn, error, onChanged, onSubmitted) {
              return (context, sc, tags, onDeleteTag) {
                return TextField(
                  onSubmitted: onSubmitted,
                  controller: tec,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    hintText: tags.isEmpty?'@kishore':'',
                      hintStyle: TextStyle(
                    fontFamily: 'Objectivity',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: const Color(0xFF7E91AE)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFEFEFEF), width: 1.sp)),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFEFEFEF), width: 1.sp)),
                    prefixIcon: tags.isNotEmpty ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: tags.map((String tag) {
                            return Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFF8),
                                      borderRadius: BorderRadius.circular(6.r)),
                                  margin: EdgeInsets.only(left: 12.w),
                                  child: SizedBox(height: 24.h,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 16.w,
                                          ),
                                          Text('@$tag',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Objectivity',
                                                  color:
                                                      const Color(0xFF242424))),
                                          SizedBox(
                                            width: 3.86.w,
                                          ),
                                          InkWell(
                                            onTap: () => onDeleteTag(tag),
                                            child: Image.asset(
                                                'assets/images/cancel.png',
                                                width: 20.w,
                                                height: 20.h),
                                          ),
                                          SizedBox(width: 8.w,)
                                        ]),
                                  ),);
                          }).toList()),
                    ) : null
                  ),
                );
              };
            },
          ),
        ),
      ],
    );
  }
}
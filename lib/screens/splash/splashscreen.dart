import '../../utils/export.dart';

class Splashscreen extends StatelessWidget {
  Splashcontroller splashcontroller=Get.put(Splashcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
          child: Text(
        'MEE-MLA',
        style: TextStyle(
            fontFamily: 'Objectivity',
            fontWeight: FontWeight.w700,
            color: Colors.pink,
            fontSize: 24.sp),
      )),
    );
  }
}

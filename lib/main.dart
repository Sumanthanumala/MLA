import 'package:mla/screens/splash/splashscreen.dart';
import 'package:mla/utils/export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MEE-MLA',
        getPages: Routes.routes,
        home: Splashscreen()),
    );
  }
}
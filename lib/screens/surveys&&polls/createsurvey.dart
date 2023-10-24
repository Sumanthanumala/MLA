import '../../utils/export.dart';

class CreateSurveyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(44.h),
          child: Customappbar(text: 'Create Survey')),
    );
  }
}
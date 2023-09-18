import 'package:flutter_gram/features/auth/screens%20(presentation)/user_account_home.dart';
import 'package:flutter_gram/utils/exporter.dart';

class Loader extends StatefulWidget {
  ///Fake loader before starting app
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const UserAccountHome();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

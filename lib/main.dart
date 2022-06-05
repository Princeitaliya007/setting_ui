import 'package:flutter/cupertino.dart';
// import 'lib/pages/ios.dart';
import 'library/source.dart';
import 'pages/ios.dart';

void main() {
  runApp(
    const HomePage(),
  );
}

///
/// This is Home page(Every 100 millisecond to refresh page)
///

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (isIos)
        ? const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: IosPage(),
          )
        : const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: AndroidApp(),
          );
  }
}


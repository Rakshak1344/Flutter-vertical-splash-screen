import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gstore/screens/home.dart';
import 'package:gstore/screens/startScreen.dart';
// import 'package:gstore/utils/myColors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setEnabledSystemUIOverlays([]);

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(MyApp());
  // runApp(DevicePreview(
  //   builder: (context) => MyApp(),
  // ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

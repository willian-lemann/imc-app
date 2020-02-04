import 'package:flutter/cupertino.dart';
import 'package:imc_app/ui/ios/pages/HomePage.dart';
 

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Imc App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

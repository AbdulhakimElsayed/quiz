import 'package:flutter/material.dart';
import 'package:quiz/design2/home2.dart';
import 'package:quiz/design3/home3.dart';

import 'design1/home1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        Home1.routeName: (_) => Home1(),
        Home2.routeName: (_) => const Home2(),
        Home3.routeName: (_) => Home3(),
      },
      initialRoute: Home3.routeName,
    );
  }
}

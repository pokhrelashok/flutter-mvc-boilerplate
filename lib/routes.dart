import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/views/screens/home/home_screen.dart';

class Routes {
  Routes._();
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
  };
}

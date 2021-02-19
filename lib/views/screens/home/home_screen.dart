import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/views/screens/home/home_screen_store.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenStore()),
      ],
      child: BuildHomeScreen(),
    );
  }
}

class BuildHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        context.read<HomeScreenStore>().increment();
      },
      child: Text(
        '${context.watch<HomeScreenStore>().count}',
      ),
    );
  }
}

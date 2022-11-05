import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenassignment/models/UserDatas.dart';

import 'package:screenassignment/screens/trends.Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UserInfo(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TrendsScreen(),
      ),
    );
  }
}

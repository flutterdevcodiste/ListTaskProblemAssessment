import 'package:flutter/material.dart';

import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // This is the theme of your application.
      theme: ThemeData.dark(),
      home: const ListWidget(),
    );
  }
}

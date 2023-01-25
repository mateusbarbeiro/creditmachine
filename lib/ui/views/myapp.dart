import 'package:flutter/material.dart';

import '../shared/themedata.dart';
import 'navbar/navbar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeusCard Maquininha',
      theme: appThemeData,
      debugShowCheckedModeBanner: false,
      home: const Navbar(),
    );
  }
}
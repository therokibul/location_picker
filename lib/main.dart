import 'package:flutter/material.dart';

import 'select_location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Location',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SelectLocationScreen(),
    );
  }
}

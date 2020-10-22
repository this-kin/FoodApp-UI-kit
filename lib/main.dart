import 'package:flutter/material.dart';

import 'package:foodapp_ui/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
  ));
}

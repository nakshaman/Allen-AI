import 'package:allen/home_page.dart';
import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Pallete.whiteColor,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

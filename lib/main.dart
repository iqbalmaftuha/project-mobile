import 'package:flutter/material.dart';
import 'package:projectmobile/pages/intro1_page.dart';
import 'package:projectmobile/pages/intro2_page.dart';
import 'package:projectmobile/shared/shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor),
          centerTitle: true,
          titleTextStyle:
              blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Intro1Page(),
        '/intro2': (context) => Intro2Page(),
        // Add more routes if needed
      },
    );
  }
}

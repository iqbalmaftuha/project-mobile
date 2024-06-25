import 'package:flutter/material.dart';
import 'package:projectmobile/pages/pages.dart';
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
        primaryColor: pinkColor,
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
          iconTheme: IconThemeData(color: blackColor),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      initialRoute: '/home-page',
      routes: {
        '/': (context) => Intro1Page(),
        '/intro2': (context) => Intro2Page(),
        '/intro3': (context) => ScreenPage(),
        '/login-page': (context) => LoginPage(),
        '/register-page': (context) => RegisterPage(),
        '/home-page': (context) => HomePage(),
        '/profile-page': (context) => ProfilePage(),
      },
      // home: HomePage(),
    );
  }
}

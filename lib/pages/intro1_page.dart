import 'package:flutter/material.dart';
import 'package:projectmobile/shared/shared.dart';
import 'package:projectmobile/pages/intro2_page.dart';

class Intro1Page extends StatelessWidget {
  const Intro1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Intro2Page(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/image1.png',
                  scale: 1.2,
                ),
                SizedBox(height: 10),
                Text(
                  'Temukan Buku Incaranmu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Jelajahi ribuan judul dari berbagai genre, pesan buku yang anda cari hanya dengan beberapa ketukan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

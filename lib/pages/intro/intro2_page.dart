part of '../pages.dart';

class Intro2Page extends StatelessWidget {
  const Intro2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 43),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img_intro2.png',
                scale: 1.1,
              ),
              SizedBox(height: 20),
              Text(
                'Jelajahi Fiksi Terlengkap',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Kami percaya bahwa setiap halaman memiliki kisahnya yang akan membawa Anda ke dunia baru.',
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 60, right: 120, left: 120),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/intro3');
          },
          child: Text(
            "Mulai",
            style: TextStyle(color: whiteColor),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: pinkColor,
            minimumSize: Size(150, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}

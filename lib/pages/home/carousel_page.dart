part of '../pages.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar gambar
    final List<String> imageList = [
      'assets/images/img_bannerpromo.png',
      'assets/images/img_bannerpromo.png',
      'assets/images/img_bannerpromo.png',
      'assets/images/img_bannerpromo.png',
    ];

    return CarouselSlider(
      items: imageList.map(
        (imagePath) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
              color: pinkColor,
              borderRadius: BorderRadius.circular(25),
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: 125,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
      ),
    );
  }
}

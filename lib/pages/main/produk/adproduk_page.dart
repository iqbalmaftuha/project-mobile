import 'package:flutter/material.dart';
import 'package:projectmobile/shared/shared.dart';
import 'package:projectmobile/widgets/widgets.dart';

class AdprodukPage extends StatelessWidget {
  const AdprodukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Atur Produk Seller',
          style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
        ),
        centerTitle: true,
        backgroundColor: lightBackgroundColor,
        surfaceTintColor: lightBackgroundColor,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 24,
        ),
        children: [
          listProduk(),
          listProduk(),
          listProduk(),
          listProduk(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: pinkColor,
        child: Icon(
          Icons.add,
          color: whiteColor,
          size: 32,
        ),
      ),
    );
  }
}

Widget listProduk() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 32),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/img_coverbuku2.png',
              scale: 1.5,
            ),
            SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Virgin Suicides',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Jeffrey Eugenides',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Rp185.000',
                  style: greenTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: extraBold,
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      'Stok: 1',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(width: 32),
                    Text(
                      'Terjual: 5',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonCustomeWhite(
              title: 'Hapus',
              width: 156,
            ),
            SizedBox(width: 12),
            ButtonCustomeWhite(
              title: 'Ubah',
              width: 156,
            ),
          ],
        ),
      ],
    ),
  );
}

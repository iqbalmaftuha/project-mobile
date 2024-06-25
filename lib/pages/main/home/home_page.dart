part of '../../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bagian app bar
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi Manisa!',
                style: TextStyle(
                  color: pinkColor,
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icons/ic_shope.png',
                  width: 34,
                  height: 34,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            //bagian search produk
            decoration: InputDecoration(
              hintText: 'Temukan buku/penulis yang ingin kamu cari',
              hintStyle: TextStyle(color: textColor),
              contentPadding: const EdgeInsets.all(10),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              fillColor: biancaColor,
              filled: true,
            ),
          ),
          const SizedBox(height: 24),
          const CarouselPage(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 20,
                  color: pinkColor,
                  fontWeight: semiBold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'lihat semua',
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: textColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          //bagian list kategori produk
          kategoriMenu(),
          const SizedBox(height: 18),
          Row(
            children: [
              Text(
                'Rekomendasi',
                style: TextStyle(
                  fontSize: 20,
                  color: pinkColor,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const RekomendasiPage(),
        ],
      ),
    );
  }

  Widget kategoriMenu() {
    return SizedBox(
      height: 64,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          menuItem('assets/icons/ic_kategori_1.png', 'Agama'),
          menuItem('assets/icons/ic_kategori_2.png', 'Fiksi'),
          menuItem('assets/icons/ic_kategori_3.png', 'Nonfiksi'),
          menuItem('assets/icons/ic_kategori_4.png', 'Pendidikan'),
          menuItem('assets/icons/ic_kategori_5.png', 'Puisi'),
          menuItem('assets/icons/ic_kategori_1.png', 'Seni'),
          menuItem('assets/icons/ic_kategori_2.png', 'Horor'),
        ],
      ),
    );
  }

  Widget menuItem(String image, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Image.asset(
            image,
            scale: 1,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 8),
          ),
        ],
      ),
    );
  }
}

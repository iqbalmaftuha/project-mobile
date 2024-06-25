part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile Pengguna',
          style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: blackColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/img_profile.png',
                        width: 75,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/icons/ic_edit_profile.png',
                        scale: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Manisa Rahmalia Putri',
                style: blackTextStyle.copyWith(fontSize: 16, fontWeight: black),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Akun Saya',
            style: greyTextStyle.copyWith(fontSize: 12, fontWeight: reguler),
          ),
          optionMenu('Atur Produk Seller', () {}),
          const Divider(),
          optionMenu('Atur Data Saya', () {}),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Pengaturan',
            style: greyTextStyle.copyWith(fontSize: 12, fontWeight: reguler),
          ),
          const SizedBox(
            height: 16,
          ),
          optionMenu('Pengaturan Chat', () {}),
          const Divider(),
          optionMenu('Pengaturan Notifikasi', () {}),
          const Divider(),
          optionMenu('Pengaturan Privasi', () {}),
          const Divider(),
          optionMenu('Bahasa', () {}),
          Text(
            'Bahasa Indonesia',
            style: greyTextStyle.copyWith(fontSize: 12, fontWeight: reguler),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Bantuan',
            style: greyTextStyle.copyWith(fontSize: 12, fontWeight: reguler),
          ),
          const SizedBox(
            height: 16,
          ),
          optionMenu('Pusat Bantuan', () {}),
          const Divider(),
          optionMenu('Kebijakan Cena', () {}),
          const Divider(),
          optionMenu('Tentang', () {}),
        ],
      ),
    );
  }

  Widget optionMenu(String title, VoidCallback onTap) {
    return GestureDetector(
      child: SizedBox(
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style:
                  blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}

part of '../pages.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Image.asset(
                    'assets/images/img_rakbuku.png',
                    scale: 1,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Temukan Buku Incaran di Cena',
                    style:
                        blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Jelajahi ribuan judul dari berbagai genre, '
                    'pesan buku yang anda cari hanya dengan beberapan ketukan.',
                    style: greyTextStyle.copyWith(
                        fontSize: 15, fontWeight: semiBold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ButtonCustomePink(
                    title: 'Daftar',
                    onTap: () {
                      Navigator.pushNamed(context, '/register-page');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ButtonCustomeWhite(
                    title: 'Masuk',
                    onTap: () {
                      Navigator.pushNamed(context, '/login-page');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ButtonCustomeIcon(
                      title: 'Lanjutkan Dengan Google',
                      iconUrl: 'assets/icons/ic_google.png'),
                ],
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan mendaftar atau masuk, artinya anda menyetujui ',
                  style:
                      blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),
                  children: [
                    TextSpan(
                        text: 'Syarat dan ketentuan',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                          color: pinkColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //Navgiation
                          }),
                    TextSpan(
                      text: ' yang berlaku',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: medium),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

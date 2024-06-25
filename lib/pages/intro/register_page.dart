part of '../pages.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar',
          style: pinkTextStyle.copyWith(fontSize: 18, fontWeight: bold),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: pinkColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        children: [
          Column(
            children: [
              CustomTextFieldWidget(
                label: 'Masukan nama lengkap anda di sini',
                title: 'Nama Lengkap',
                obscureText: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFieldWidget(
                label: 'Contoh : 08xxxxxxxxxx',
                title: 'Nomor Telepon',
                obscureText: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFieldWidget(
                label: 'Contoh@gmail.com',
                title: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFieldWidget(
                label: 'Buat kata sandi anda di sini',
                title: 'Kata Sandi',
                obscureText: true,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    '*Minimal 8 huruf disertai kapital dan angka',
                    style: greyTextStyle.copyWith(
                        fontSize: 12, fontWeight: reguler),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonCustomePink(
                title: 'Daftar',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Atau',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: reguler,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const ButtonCustomeIcon(
                title: 'Lanjutkan Dengan Google',
                iconUrl: 'assets/icons/ic_google.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

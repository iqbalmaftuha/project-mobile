part of 'widgets.dart';

class ButtonCustomePink extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  const ButtonCustomePink(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        width: 220,
        height: 40,
        decoration: BoxDecoration(
          color: pinkColor,
          border: Border.all(color: pinkColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ButtonCustomeWhite extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  const ButtonCustomeWhite({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        width: 220,
        height: 40,
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: pinkColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: pinkTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonCustomeIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconUrl;
  final String title;
  const ButtonCustomeIcon({
    super.key,
    required this.title,
    required this.iconUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        width: 220,
        height: 40,
        decoration: BoxDecoration(
          color: softGreyColor,
          border: Border.all(color: pinkColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconUrl),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: pinkTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

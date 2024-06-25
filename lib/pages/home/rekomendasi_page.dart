part of '../pages.dart';

class Book {
  final String image;
  final String title;
  final String author;
  final String price;

  Book(this.image, this.title, this.author, this.price);
}

class RekomendasiPage extends StatelessWidget {
  const RekomendasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Book> books = [
      Book(
        'assets/images/img_coverbuku1.png',
        'Midnight in December',
        'Kith',
        'Rp.1000',
      ),
      Book(
        'assets/images/img_coverbuku2.png',
        'The Virgin Suicides',
        'Jeffrey Eugenides',
        'Rp.2000',
      ),
      Book(
        'assets/images/img_coverbuku2.png',
        'The Virgin Suicides',
        'Jeffrey Eugenides',
        'Rp.3000',
      ),
      Book(
        'assets/images/img_coverbuku1.png',
        'Midnight in December',
        'Kith',
        'Rp.4000',
      ),
      Book(
        'assets/images/img_coverbuku1.png',
        'Midnight in December',
        'Kith',
        'Rp.5000',
      ),
      Book(
        'assets/images/img_coverbuku2.png',
        'The Virgin Suicides',
        'Jeffrey Eugenides',
        'Rp.6000',
      ),
      Book(
        'assets/images/img_coverbuku2.png',
        'The Virgin Suicides',
        'Jeffrey Eugenides',
        'Rp.7000',
      ),
      Book(
        'assets/images/img_coverbuku1.png',
        'Midnight in December',
        'Kith',
        'Rp.8000',
      ),
    ];

    return GridView(
      // childAspectRatio: 0.72,
      physics: NeverScrollableScrollPhysics(),
      // crossAxisCount: 2,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      shrinkWrap: true,
      children: books.map((book) {
        return Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    book.image,
                    height: 160,
                    width: 160,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                book.title,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff19191B),
                  fontWeight: semiBold,
                ),
              ),
              Text(
                book.author,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9D9D9D),
                ),
              ),
              Text(
                book.price,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff295021),
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

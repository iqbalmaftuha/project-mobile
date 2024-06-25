// import 'package:flutter/material.dart';
// import 'package:projectmobile/shared/shared.dart';

// class BottomnavbarWidget extends StatelessWidget {
//   const BottomnavbarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         shape: CircleBorder(),
//         backgroundColor: pinkColor,
//         child: Icon(
//           Icons.home,
//           color: navigasibarColor,
//           size: 26,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: navigasibarColor,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         iconSize: 26,
//         selectedItemColor: pinkColor,
//         unselectedItemColor: iconbarColor,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu_book),
//             label: "Book",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_border),
//             label: "Bookmark",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Setting",
//           ),
//         ],
//       ),
//     );
//   }
// }

part of 'widgets.dart';

// class BottomnavbarWidget extends StatelessWidget {
//   const BottomnavbarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: const BorderRadius.only(
//         topLeft: Radius.circular(40),
//         topRight: Radius.circular(40),
//       ),
//       child: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: navigasibarColor,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         iconSize: 26,
//         selectedItemColor: pinkColor,
//         unselectedItemColor: iconbarColor,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: EdgeInsets.all(5),
//               child: Icon(Icons.home_outlined),
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu_book_outlined),
//             label: "Book",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_border),
//             label: "Bookmark",
//           ),
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: EdgeInsets.all(5),
//               child: Icon(Icons.perm_identity_outlined),
//             ),
//             label: "Setting",
//           ),
//         ],
//       ),
//     );
//   }
// }

class BottomnavbarWidget extends StatefulWidget {
  const BottomnavbarWidget({super.key});

  @override
  _BottomnavbarWidgetState createState() => _BottomnavbarWidgetState();
}

class _BottomnavbarWidgetState extends State<BottomnavbarWidget> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePage(), // Replace with your Home screen
    // BookScreen(), // Replace with your Book screen
    // BookmarkScreen(), // Replace with your Bookmark screen
    const ProfilePage(), // Replace with your Setting screen
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: navigasibarColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 26,
          selectedItemColor: pinkColor,
          unselectedItemColor: iconbarColor,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.home_outlined),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: "Book",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.perm_identity_outlined),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

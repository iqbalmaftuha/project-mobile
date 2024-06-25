part of '../pages.dart';

class MainPage extends StatefulWidget {
  @override
  _NavigationExampleState createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<MainPage> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: const <Widget>[
          HomePage(),
          FormPage(),
          FormPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                indicatorColor: softGreyColor,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              ),
              child: NavigationBar(
                backgroundColor: navigasibarColor,
                selectedIndex: currentPageIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                destinations: <Widget>[
                  NavigationDestination(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Image.asset(
                        'assets/icons/ic_home.png',
                        scale: 1.2,
                      ),
                    ),
                    label: 'Home',
                    selectedIcon: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Image.asset(
                        'assets/icons/ic_home_filled.png',
                        scale: 1.2,
                        color: pinkColor,
                      ),
                    ),
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.menu_book_outlined, color: iconbarColor),
                    label: 'Form',
                    selectedIcon: Icon(
                      Icons.menu_book,
                      color: pinkColor,
                    ),
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.bookmark_border, color: iconbarColor),
                    label: 'Form',
                    selectedIcon: Icon(
                      Icons.bookmark,
                      color: pinkColor,
                    ),
                  ),
                  NavigationDestination(
                    icon:
                        Icon(Icons.perm_identity_outlined, color: iconbarColor),
                    label: 'Profile',
                    selectedIcon: Icon(Icons.person, color: pinkColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('')],
      ),
    );
  }
}

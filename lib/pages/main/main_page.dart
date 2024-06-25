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
            child: Container(
              child: NavigationBarTheme(
                data: NavigationBarThemeData(
                  indicatorColor: softGreyColor,
                  labelTextStyle: WidgetStateProperty.all(
                    TextStyle(color: Colors.blue),
                  ),
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
                      icon: Icon(Icons.home_outlined, color: iconbarColor),
                      label: 'Home',
                      selectedIcon: Icon(Icons.home, color: pinkColor),
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
                      icon: Icon(Icons.perm_identity_outlined,
                          color: iconbarColor),
                      label: 'Profile',
                      selectedIcon: Icon(Icons.person, color: pinkColor),
                    ),
                  ],
                ),
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

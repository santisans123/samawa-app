import 'package:samawa/import/main/all_import.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  Color mainColor = sPrimaryColor;
  final PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          padding: NavBarPadding.symmetric(vertical: 6),
          decoration: NavBarDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0, 0),
                  blurRadius: 8)
            ],
          ),
          screens: [
            HomePage(),
            Container(
              alignment: Alignment.center,
              child: Text("Search"),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Chat"),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Profile"),
            )
          ],
          items: _navBarsItems(),
          navBarStyle: NavBarStyle.style14,
        ));
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Ionicons.home, size: 23),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: sPrimaryBlackColor.withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Ionicons.search, size: 23),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: sPrimaryBlackColor.withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Ionicons.chatbubble_ellipses, size: 23),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: sPrimaryBlackColor.withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Ionicons.person, size: 23),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: sPrimaryBlackColor.withOpacity(0.6),
      ),
    ];
  }
}
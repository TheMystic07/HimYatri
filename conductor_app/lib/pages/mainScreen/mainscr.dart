import 'package:conductor_app/pages/navScreens/home.dart';
import 'package:conductor_app/pages/navScreens/profile.dart';
import 'package:conductor_app/pages/navScreens/seats.dart';
import 'package:conductor_app/pages/navScreens/set_route.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
          //yeh Navigation bar ak code  hai and  aur mai jaa rha soone

          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: const [Home(), Profile(), Seats(), SetRoute()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chair_alt_rounded), label: "Seats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_rounded), label: "Route"),
          ],
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.amber,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
          ),
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: onClicked,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'Home.dart';
import 'WalletPage.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
      home: const TabsScreen(),
    ));

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Widget>> pages = [
    {
      'page': HomeScreen(),
    },
    {
      'page': WalletPage(),
    },
    {
      'page': HomeScreen(),
    },
    {
      'page': HomeScreen(),
    },
  ];
  int selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.home,
              color: Color.fromRGBO(32, 14, 50, 1),
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.home,
              color: Color.fromRGBO(47, 128, 237, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.wallet,
              color: Color.fromRGBO(32, 14, 50, 1),
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.wallet,
              color: Color.fromRGBO(47, 128, 237, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.graph,
              color: Color.fromRGBO(32, 14, 50, 1),
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.graph,
              color: Color.fromRGBO(47, 128, 237, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.category,
              color: Color.fromRGBO(32, 14, 50, 1),
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.category,
              color: Color.fromRGBO(47, 128, 237, 1),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

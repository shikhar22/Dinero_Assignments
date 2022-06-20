import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'ExpenditureData.dart';
import 'Home.dart';
import 'WalletPage.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'SourceSansPro'),
      home: TabsScreen(),
    ));

class TabsScreen extends StatefulWidget {
  @override
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
              color: Colors.blue,
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.home,
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.wallet,
              color: Colors.blue,
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.wallet,
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.graph,
              color: Colors.blue,
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.graph,
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.category,
              color: Colors.blue,
            ),
            backgroundColor: Colors.white,
            activeIcon: Icon(
              IconlyBold.category,
              color: Colors.blue,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:recipe_app_design/explore_page.dart';
import 'package:recipe_app_design/favourite.dart';
import 'package:recipe_app_design/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [
    Home(),
    Explore(),
    Favourite(),
    Container(
      color: Colors.cyan,
    ),
  ];
  int _currentIndex = 0;
  void _onTapNavigation(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: pages[_currentIndex],
              bottomNavigationBar: SizedBox(
                height: 55.0,
                child: BottomNavigationBar(
                  elevation: 23.0,
                  currentIndex: _currentIndex,
                  onTap: _onTapNavigation,
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore_outlined), label: 'Explore'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_border_outlined),
                        label: 'Favourite'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_outlined), label: 'Profile'),
                  ],
                ),
              ))),
    );
  }
}

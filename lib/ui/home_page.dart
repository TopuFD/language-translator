import 'package:flutter/material.dart';
import 'package:language_translator/ui/pages/favorite.dart';
import 'package:language_translator/ui/pages/history.dart';
import 'package:language_translator/ui/pages/settings.dart';
import 'package:language_translator/ui/pages/translator.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectIndex = 0;
  List pages = [
    const Translator(),
    const FavoritePage(),
    const HistoryPage(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Translator App"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: ResponsiveNavigationBar(
        
        borderRadius: 20,
        selectedIndex: selectIndex,
        onTabChange: (int index) {
          setState(() {
            selectIndex = index;
          });
        },
        navigationBarButtons: const [
          NavigationBarButton(
            text: 'Home',
            icon: Icons.home,
            backgroundColor: Colors.white,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
          NavigationBarButton(
            text: 'Favorite',
            icon: Icons.favorite,
            backgroundColor: Colors.white,
            backgroundGradient: LinearGradient(
              colors: [Colors.cyan, Colors.teal],
            ),
          ),
          NavigationBarButton(
            text: 'History',
            icon: Icons.history,
            backgroundColor: Colors.white,
            backgroundGradient: LinearGradient(
              colors: [Colors.green, Colors.yellow],
            ),
          ),
          NavigationBarButton(
            text: 'Settings',
            icon: Icons.settings,
            backgroundColor: Colors.white,
            backgroundGradient: LinearGradient(
              colors: [Colors.green, Colors.yellow],
            ),
          ),
        ],
      ),
      body: pages[selectIndex],
    );
  }
}

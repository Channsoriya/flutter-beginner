
import 'package:flutter/material.dart';
import 'package:flutter_app/e-commerce/view/howe_screen.dart';
import 'package:flutter_app/e-commerce/view/page_favorite.dart';
import 'package:flutter_app/e-commerce/view/page_shopping.dart';
import 'package:flutter_app/e-commerce/view/person_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
List<Widget> listpage=[
  const HomeScreen(),
  const FavoritePage(),
  const ShoppingPage(),
  const PersonPage(),
];
 int currenindex=0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listpage[currenindex],
     bottomNavigationBar: SalomonBottomBar(
      currentIndex: currenindex,
      onTap: (value) {
        setState(() {
          currenindex=value;
        });
      },
      items: [
       SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),
            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: Colors.pink,
            ),
            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.shopping_cart),
              title: const Text("Shop"),
              selectedColor: Colors.orange,
            ),
            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
      ],
     ),
    );
  }
}
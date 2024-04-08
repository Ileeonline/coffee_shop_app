import 'package:coffee_app/utils/coffee_tiles.dart';
import 'package:coffee_app/utils/coffee_types.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
      ]),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best Coffee for you',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search your coffee....',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 20,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTypes(
                  CoffeeNames: 'Cappucino',
                  isSelected: false,
                ),
                CoffeeTypes(
                  CoffeeNames: 'Latte',
                  isSelected: true,
                ),
                CoffeeTypes(
                  CoffeeNames: 'Black Coffee',
                  isSelected: false,
                ),
                CoffeeTypes(
                  CoffeeNames: 'Milk Coffee',
                  isSelected: true,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTiles(),
                CoffeeTiles(),
                CoffeeTiles(),
                CoffeeTiles(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

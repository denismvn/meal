import 'package:flutter/material.dart';
import 'package:meal/widgets/page/category_page.dart';
import 'package:meal/widgets/page/favourite_meals_page.dart';
import 'package:meal/widgets/page/main_drawer.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedPageIndex = 0;
  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page' : const CategoryPage(),
        'title' : "Категории",
      },
      {
        'page' : const FavouriteMeals(),
        'title' : "Избранное",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.grey[900],
      // backgroundColor: Colors.black54,
      title: Text(
        _pages[_selectedPageIndex]['title'] as String,  
        style:  const TextStyle(
          fontWeight: FontWeight.w700,
        color: Colors.white
        ),
      ),
    ),
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onSelected,
        backgroundColor: Colors.grey[850],
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Категории",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: "Избранное",
          ),
        ],
      ),
    );
  }
  void _onSelected(int value){
    setState(() {
      _selectedPageIndex = value;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/widgets/page/main_drawer.dart';

class FilterPage extends StatefulWidget {
  static String route = "/filter";
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
       backgroundColor: Colors.grey[900],
      // backgroundColor: Colors.black54,
        title: const Text(
        "Настройки",  
        style:  TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.white
          ),
       ),
     ),
      drawer: const MainDrawer(
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Укажите Ваши препочтения',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                const Divider(),
                _buildSwitchListTile(
                  "Без глютена",
                  "При выборе этого пункта все блюда, включающие продукты, содержащие глютен, будут скрыты",
                  MockData.isGlutenFree,
                  (bool value){
                    setState(() {
                      MockData.isGlutenFree = value;
                      },
                    );
                  }
                ),
                const Divider(),
                _buildSwitchListTile(
                  "Без лактозы",
                  "При выборе этого пункта все блюда, включающие продукты, содержащие лактозу, будут скрыты",
                  MockData.isLactoseFree,
                  (bool value){
                    setState(() {
                      MockData.isLactoseFree = value;
                      }
                    );
                  }
                ),
                const Divider(),
                _buildSwitchListTile(
                  "Вегаетарианские блюда",
                  "При выборе этого пункта все блюда, включающие в себя мясные продукты, будут скрыты",
                  MockData.isVegetarian,
                  (bool value){
                    setState(() {
                      MockData.isVegetarian = value;
                      }
                    );
                  }
                ),
                const Divider(),
                _buildSwitchListTile(
                  "Веганские блюда",
                  "При выборе этого пункта все блюда, включающие в себя продукты животного происхождения, будут скрыты",
                  MockData.isVegan,
                  (bool value){
                    setState(() {
                      MockData.isVegan = value;
                      }
                    );
                  }
                ),
              ],
            ),
          )
        ]
      ,)
    );
  }
  
  _buildSwitchListTile(
    String title, 
    String description, 
    bool parameter, 
    void Function(bool value) tapHendler
    ) {
    return SwitchListTile(
      value: parameter, 
      onChanged: tapHendler, 
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white
        ),
      ), 
      subtitle: Text(
        description,
        style: const TextStyle(
          color: Colors.white38,
        ),
      ),
    );
  }
}
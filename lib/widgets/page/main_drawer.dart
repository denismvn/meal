import 'package:flutter/material.dart';
import 'package:meal/widgets/page/filter_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(String title, IconData icon, Function() tapHendler) {
    return Container(
      color: Colors.grey[900],
      child: ListTile(
        iconColor: Colors.white,
        leading: Icon(
          icon,
          size: 26,
          ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        onTap: tapHendler,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      
        ),
      child: Drawer(
        child: Container(
          color: Colors.grey[900],
          child: Column(
            children: [
              Container(
                color: Colors.grey[900],
                height: 120,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  " Приготовим \n вместе",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color:  Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.grey[900],
                height: 20,
              ),
              buildListTile('Блюда', Icons.restaurant, (){
                Navigator.of(context).pushReplacementNamed("/");
              }),
              buildListTile('Настройки', Icons.settings, (){
                Navigator.of(context).pushReplacementNamed(FilterPage.route);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
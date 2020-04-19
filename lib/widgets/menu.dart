import 'package:flutter/material.dart';
import './my_menu_items.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Adel Mahmoud'), 
              accountEmail: Text('adelmahmoud1991@gmail.com'),
              currentAccountPicture: Image.asset('assets/images/adel.png'),
            ),
            Divider(
              color: Theme.of(context).accentColor,
            ),
            MyMenuItems(),
          ],
        ),
      ),
    );
  }
}
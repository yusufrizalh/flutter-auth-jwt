// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // menu - menu yang ditampilkan
          _drawerHeader(),
          _drawerItem(
            icon: Icons.snippet_folder,
            text: 'My Folder',
            onTap: () => print('Tap on My Folder'),
          ),
          _drawerItem(
            icon: Icons.groups_outlined,
            text: 'Shared Items',
            onTap: () => print('Tap on Shared Items'),
          ),
          _drawerItem(
            icon: Icons.access_time_outlined,
            text: 'Recent Item',
            onTap: () => print('Tap on Recent Item'),
          ),
          _drawerItem(
            icon: Icons.delete,
            text: 'Deleted Item',
            onTap: () => print('Tap on Deleted Item'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/background-header.jpg'),
          fit: BoxFit.cover),
    ),
    accountName: Text('Rizal'),
    accountEmail: Text('rizal@inixindo.co.id'),
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('assets/images/user_1.png'),
        fit: BoxFit.cover,
      ),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
          image: AssetImage('assets/images/user_2.png'),
          fit: BoxFit.cover,
        ),
      ),
      ClipOval(
        child: Image(
          image: AssetImage('assets/images/user_3.png'),
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}

Widget _drawerItem({IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

/*
  # Challenge:
    - buat routing untuk setiap menu didalam nav drawer
    - buat class / widget di file terpisah atau didalam file nav-drawer.dart
*/
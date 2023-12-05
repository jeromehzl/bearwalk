import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/drawer_provider.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';
import 'NavigationDrawer_item.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItems(context)],
        )),
      );

  Widget buildHeader(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Material(
      color: Colors.red[50],
      child: InkWell(
        onTap: () {
          drawerProvider.changeSelectedDrawerScreen('Profil');

          // drawerProvider.navigateToPage(0);
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(
              top: 20 + MediaQuery.of(context).padding.top, bottom: 20),
          child: const Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: Colors.white60,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Max Mustermann',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                'max@mustermann.de',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: Wrap(
        runSpacing: 4,
        children: [
          NavigationDrawerItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          NavigationDrawerItem(
            icon: const Icon(Icons.settings_outlined),
            title: const Text('Einstellungen'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const SettingsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

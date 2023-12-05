import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/drawer_provider.dart';

class NavigationDrawerItem extends StatefulWidget {
  final Icon icon;
  final Text title;
  final VoidCallback onTap;

  const NavigationDrawerItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  State<NavigationDrawerItem> createState() => _NavigationDrawerItemState();
}

class _NavigationDrawerItemState extends State<NavigationDrawerItem> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    String selectedTile = drawerProvider.selectedDrawerScreen;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        shape: RoundedRectangleBorder(
          // side: const BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
        selected: (selectedTile == widget.title.data) ? true : false,
        selectedTileColor: Theme.of(context).colorScheme.primary,
        selectedColor: Colors.white,
        leading: widget.icon,
        title: widget.title,
        onTap: () {
          widget.onTap();
          drawerProvider.changeSelectedDrawerScreen(widget.title.data!);
        },
      ),
    );
  }
}

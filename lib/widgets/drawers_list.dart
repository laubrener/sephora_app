import 'package:flutter/material.dart';

class DrawersList extends StatelessWidget {
  const DrawersList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> drawerItems = [
      'Home',
      'Inbox',
      'Lists',
      'Shop',
      'Stories & Services'
    ];

    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const Divider(
              color: Colors.white,
            ),
        itemCount: drawerItems.length,
        itemBuilder: (context, i) => ListTile(
              title: Text(
                drawerItems[i].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               const CategoryPage()));
              //   // builder: (BuildContext context) => pageRoutes[i].page));
              // },
            ));
  }
}

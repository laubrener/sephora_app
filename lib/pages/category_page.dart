import 'package:flutter/material.dart';
import 'package:sephora_app/pages/main_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Categoría'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.chevron_left_outlined, size: 35),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ]),
        drawer: const Menu(),
        drawerScrimColor: Colors.white.withOpacity(0.5),
        body: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                ),
            itemCount: 15,
            itemBuilder: (context, i) => ListTile(
                  title: Text('Subategoría'),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) => pageRoutes[i].page));
                  },
                )));
  }
}

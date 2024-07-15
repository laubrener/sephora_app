import 'package:flutter/material.dart';
import 'package:sephora_app/pages/category_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoriesList(),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
            ),
        itemCount: 15,
        itemBuilder: (context, i) => ListTile(
              title: Text('Categoría'),
              trailing: const Icon(
                Icons.chevron_right,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CategoryPage()));
                // builder: (BuildContext context) => pageRoutes[i].page));
              },
            ));
  }
}

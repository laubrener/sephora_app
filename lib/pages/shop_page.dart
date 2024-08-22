import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/models/categories_model.dart';
import 'package:sephora_app/pages/category_page.dart';
import 'package:sephora_app/pages/loading_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/providers/categories_provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SHOP'),
      body: CategoriesList(),
    );
  }
}

class CategoriesList extends StatefulWidget {
  const CategoriesList({
    super.key,
  });

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList>
    with TickerProviderStateMixin {
  CategoriesProvider categoriesProvider = CategoriesProvider();

  @override
  void initState() {
    super.initState();

    categoriesProvider = context.read<CategoriesProvider>();
    _loadCategories();
  }

  void _loadCategories() async {
    await categoriesProvider.getCategories();
    setState(() {});
  }

  @override
  void dispose() {
    // categoriesProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<RootCategory>? categories = categoriesProvider.categoriesList;

    if (categories.isEmpty) return const LoadingPage();
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
            ),
        itemCount: categories.length,
        itemBuilder: (context, i) => ListTile(
              title: Text(categories[i].displayName ?? ""),
              trailing: const Icon(
                Icons.chevron_right,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CategoryPage(
                              catId: categories[i].categoryId,
                              name: categories[i].displayName,
                            )));
              },
            ));
  }
}

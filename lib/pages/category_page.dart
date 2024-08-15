import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/models/category_model.dart';
import 'package:sephora_app/pages/loading_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/providers/categories_provider.dart';

class CategoryPage extends StatefulWidget {
  final String? catId;
  final String? name;
  const CategoryPage({Key? key, this.catId, this.name = 'Category'})
      : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with TickerProviderStateMixin {
  CategoriesProvider categoriesProvider = CategoriesProvider();

  @override
  void initState() {
    super.initState();

    categoriesProvider =
        Provider.of<CategoriesProvider>(context, listen: false);
    _loadCategories();
  }

  void _loadCategories() async {
    print(widget.catId);
    await categoriesProvider.getSubcategories(widget.catId ?? '');
    print(categoriesProvider.subcategoriesList);
    setState(() {});
  }

  @override
  void dispose() {
    categoriesProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<ChildCategory>? categories = categoriesProvider.subcategoriesList;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(widget.name!),
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
        body: categories!.isEmpty
            ? const LoadingPage()
            : ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.grey,
                    ),
                itemCount: categories.length,
                itemBuilder: (context, i) => ListTile(
                      title: Text(categories[i].displayName ?? ""),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (BuildContext context) => pageRoutes[i].page));
                      },
                    )));
  }
}

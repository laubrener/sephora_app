import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/providers/products_provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/products_model.dart';

class HomePage extends StatelessWidget {
  final String catId;
  const HomePage({Key? key, required this.catId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductsList(catId: catId),
    );
  }
}

class ProductsList extends StatefulWidget {
  final String catId;
  const ProductsList({
    super.key,
    required this.catId,
  });

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList>
    with TickerProviderStateMixin {
  ProductsProvider productsProvider = ProductsProvider();

  @override
  void initState() {
    productsProvider = Provider.of<ProductsProvider>(context, listen: false);
    _loadCategories();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _loadCategories() async {
    print(widget.catId);
    await productsProvider.getProducts(widget.catId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Product> products = productsProvider.productsList;
    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // childAspectRatio: 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          mainAxisExtent: 250),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          // width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: const Offset(0, 5),
                  blurRadius: 5),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: FadeInImage(
                  placeholder: const AssetImage('assets/images/no-image.jpg'),
                  placeholderFit: BoxFit.cover,
                  image: NetworkImage(products[index].heroImage ?? ''),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                (products[index].brandName ?? 'Drybar').toUpperCase(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                products[index].displayName ?? 'Blonde Ale Brightening Shampoo',
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
              Text(
                products[index].currentSku?.listPrice ?? '\$27.00',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              RatingWidget(
                rating: double.parse(products[index].rating ?? '0'),
              )
            ],
          ),
        );
      },
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: double.infinity,
      height: 20,
      child: RatingBar.builder(
        direction: Axis.horizontal,
        onRatingUpdate: (value) => print(value),
        ignoreGestures: true,
        initialRating: rating,
        itemCount: 5,
        itemSize: 22,
        allowHalfRating: true,
        unratedColor: Colors.grey[300],
        itemBuilder: (BuildContext context, int i) {
          return const Icon(
            Icons.star,
            color: Colors.black,
          );
        },
      ),
    );
  }
}

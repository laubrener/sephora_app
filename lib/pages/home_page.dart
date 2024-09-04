import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/models/product_model.dart';
import 'package:sephora_app/pages/details_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/providers/products_provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/products_model.dart';

class HomePage extends StatelessWidget {
  final String catId;
  final String name;
  const HomePage({Key? key, required this.catId, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: name.toUpperCase()),
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
    productsProvider = context.read<ProductsProvider>();
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
    productsProvider.isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Product> products = productsProvider.productsList;

    return productsProvider.isLoading == true
        ? const Center(
            child: CircularProgressIndicator(color: Colors.black),
          )
        : GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                // childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                mainAxisExtent: 250),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailsPage(
                                product: products[index],
                              )));
                },
                child: CardWidget(
                  image: products[index].heroImage ?? "",
                  brand: products[index].brandName ?? '',
                  name: products[index].displayName ?? '',
                  price: products[index].currentSku?.listPrice ?? '',
                  rating: products[index].rating,
                ),
              );
            },
          );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.image,
    required this.brand,
    required this.name,
    required this.price,
    this.rating,
  });

  final String image;
  final String brand;
  final String name;
  final String price;
  final String? rating;

  @override
  Widget build(BuildContext context) {
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: FadeInImage(
              placeholder: const AssetImage('assets/images/no-image.jpg'),
              placeholderFit: BoxFit.cover,
              image: NetworkImage(image),
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            (brand).toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            overflow: TextOverflow.clip,
            maxLines: 2,
          ),
          Text(
            price,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          rating == null
              ? Container()
              : RatingWidget(
                  rating: double.parse(rating!),
                  size: 16,
                )
        ],
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
    this.size = 22,
    this.width = double.infinity,
  });

  final double rating;
  final double? size;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: width,
      height: 20,
      child: RatingBar.builder(
        direction: Axis.horizontal,
        onRatingUpdate: (value) => print(value),
        ignoreGestures: true,
        initialRating: rating,
        itemCount: 5,
        itemSize: size!,
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

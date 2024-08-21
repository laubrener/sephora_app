import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/models/product_model.dart';
import 'package:sephora_app/models/products_model.dart';
import 'package:sephora_app/pages/home_page.dart';
import 'package:sephora_app/providers/products_provider.dart';
import 'package:sephora_app/widgets/send_btn.dart';

class DetailsPage extends StatefulWidget {
  final Product product;
  const DetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with TickerProviderStateMixin {
  ProductsProvider productsProvider = ProductsProvider();
  PageController pageController = PageController();

  @override
  void initState() {
    productsProvider = context.read<ProductsProvider>();
    _loadProduct();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Future<void> _loadProduct() async {
    await productsProvider.getProductDetail(
        widget.product.productId!, widget.product.currentSku!.skuId!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final product = productsProvider.product.productDetails;
    return Scaffold(
      appBar: AppBar(
        title: Text(product?.brand?.displayName ?? ''),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .7,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductImages(
                    product: productsProvider.product,
                    controller: pageController),
                const SizedBox(height: 15),
                Text(
                  (product?.brand?.displayName ?? '').toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  product?.displayName ?? '',
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
                Text(
                  productsProvider.product.currentSku?.listPrice ?? '\$00.00',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                RatingWidget(
                  rating: product?.rating ?? 0,
                ),
                SendBtn(
                  onPressed: () {},
                  text: 'Agregar al carrito',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductImages extends StatelessWidget {
  const ProductImages({
    super.key,
    required this.product,
    required this.controller,
  });

  final ProductModel product;

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final images = product.currentSku?.alternateImages;
    return Container(
      height: 300,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          width: 190,
          child: FadeInImage(
            placeholder: const AssetImage('assets/images/no-image.jpg'),
            placeholderFit: BoxFit.cover,
            image: NetworkImage(images?[index].imageUrl ?? ''),
            fit: BoxFit.contain,
          ),
        ),
        itemCount: images?.length,
      ),
    );
  }
}

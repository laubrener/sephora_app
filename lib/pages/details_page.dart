import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sephora_app/models/product_model.dart';
import 'package:sephora_app/models/products_model.dart';
import 'package:sephora_app/pages/home_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/providers/products_provider.dart';
import 'package:sephora_app/widgets/send_btn.dart';
import 'package:sephora_app/widgets/suggestion_list.dart';

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
  List<Product>? suggestionList = [];

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
    suggestionList = await productsProvider.getProducts('cat1080037');

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final product = productsProvider.product.productDetails;
    final sizesList = productsProvider.product.regularChildSkus;
    return Scaffold(
      appBar:
          CustomAppBar(title: product?.brand?.displayName?.toUpperCase() ?? ''),
      body: productsProvider.isLoading == true
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          product?.displayName ?? '',
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        ProductImages(
                            product: productsProvider.product,
                            controller: pageController),
                        const SizedBox(height: 15),
                        IconsWidget(product: product),
                        Text(
                          productsProvider.product.currentSku?.listPrice ??
                              '\$00.00',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 15),
                        productsProvider.product.currentSku?.size != null
                            ? Text(
                                "SIZE: ${productsProvider.product.currentSku?.size}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            : Container(),
                        productsProvider.product.currentSku?.size != null
                            ? Text(
                                "SIZE: ${productsProvider.product.currentSku?.size} - Item# ${productsProvider.product.currentSku?.skuId}",
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              )
                            : Container(),
                        const SizedBox(height: 10),
                        sizesList?.length != null && sizesList?.length != 0
                            ? SizesListBtns(
                                sizesList: sizesList,
                                product: productsProvider.product,
                              )
                            : Container(),
                        Text(
                          productsProvider.product.quickLookDescription ?? '',
                          style: const TextStyle(fontSize: 16),
                          // textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child:
                                DetailsList(product: productsProvider.product)),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            productsProvider.product.useItWithTitle
                                    ?.toUpperCase() ??
                                '',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                            height: 290,
                            width: double.infinity,
                            child: SuggestionList(
                                list: productsProvider.product.ancillarySkus ??
                                    [])),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'SIMILAR PRODUCTS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                            height: 290,
                            width: double.infinity,
                            child: SuggestionList(
                                list: productsProvider.product.ancillarySkus ??
                                    [])),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
                const AddToBasketBtn(),
              ],
            ),
    );
  }
}

class SizesListBtns extends StatefulWidget {
  const SizesListBtns({
    super.key,
    required this.sizesList,
    required this.product,
  });

  final List<CurrentSku>? sizesList;
  final ProductModel product;

  @override
  State<SizesListBtns> createState() => _SizesListBtnsState();
}

class _SizesListBtnsState extends State<SizesListBtns> {
  @override
  Widget build(BuildContext context) {
    texto(int index) {
      final pipi = (widget.sizesList?[index].displayName)!.split(' ');
      pipi.removeAt(0);

      return pipi.join(' ');
    }

    return Container(
      width: MediaQuery.of(context).size.width * .65,
      height: (widget.sizesList?.length ?? 0) > 2 ? 110 : 55,
      // color: Colors.grey[200],
      alignment: Alignment.center,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              mainAxisExtent: 40),
          // scrollDirection: Axis.horizontal,
          itemCount: widget.sizesList?.length ?? 0,
          itemBuilder: (context, index) => MaterialButton(
                padding: const EdgeInsets.all(10),
                onPressed: () async {
                  final productsProvider = context.read<ProductsProvider>();

                  await productsProvider.getProductDetail(
                      widget.product.productDetails!.productId!,
                      widget.product.regularChildSkus![index].skuId!);

                  setState(() {});
                },
                textColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(texto(index).toUpperCase()),
              )),
    );
  }
}

class IconsWidget extends StatelessWidget {
  const IconsWidget({
    super.key,
    required this.product,
  });

  final ProductDetails? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.file_upload_outlined),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
            Text('${product?.lovesCount ?? 0}')
          ],
        ),
      ],
    );
  }
}

class AddToBasketBtn extends StatelessWidget {
  const AddToBasketBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        color: Colors.white,
        child: SendBtn(
          onPressed: () {},
          text: 'ADD TO BASKET',
        ),
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

class DetailsList extends StatefulWidget {
  const DetailsList({super.key, required this.product});
  final ProductModel product;

  @override
  State<DetailsList> createState() => _DetailsListState();
}

class _DetailsListState extends State<DetailsList> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    List<String> listItems = [
      '${widget.product.productDetails?.reviews} reviews',
      'find in store',
      'details',
      'how to use',
      'ingredients',
    ];
    List<dynamic> itemDetails = [
      RatingWidget(
        size: 21,
        width: 105,
        rating: widget.product.productDetails?.rating ?? 0,
      ),
      '${widget.product.currentSku?.freeShippingMessage}',
      '${widget.product.productDetails?.shortDescription}',
      '${widget.product.productDetails?.suggestedUsage}',
      '${widget.product.currentSku?.ingredientDesc}',
    ];

    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
            ),
        itemCount: listItems.length,
        itemBuilder: (context, i) => ExpansionTile(
            shape: Border.all(color: Colors.transparent),
            title: Text(
              listItems[i].toUpperCase(),
              style: const TextStyle(color: Colors.black),
            ),
            tilePadding: const EdgeInsets.only(left: 15, right: 5),
            trailing: Icon(
              _isExpanded
                  ? Icons.keyboard_arrow_down_rounded
                  : Icons.chevron_right,
              color: Colors.black,
            ),
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  child: itemDetails[i].runtimeType == String
                      ? Text(
                          itemDetails[i],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 50,
                          style: const TextStyle(fontSize: 18),
                        )
                      : itemDetails[i])
            ],
            onExpansionChanged: (value) => setState(() {
                  _isExpanded = value;
                })));
  }
}

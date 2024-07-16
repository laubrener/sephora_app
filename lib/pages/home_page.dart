import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductsList(),
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // childAspectRatio: 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          mainAxisExtent: 250),
      itemCount: 15,
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
                // width: 50,
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              Text(
                'DRYBAR',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Blonde Ale Brightening Shampoo'),
              Text(
                '\$27.00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              const Reviews()
            ],
          ),
        );
      },
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 20,
        ),
        Icon(
          Icons.star,
          size: 20,
        ),
        Icon(
          Icons.star,
          size: 20,
        ),
        Icon(
          Icons.star,
          size: 20,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}

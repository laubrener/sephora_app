import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
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
              child: const Column(
                children: [
                  Text(
                    'DRYBAR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Blonde Ale Brightening Shampoo'),
                  Text(
                    '\$27.00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
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
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

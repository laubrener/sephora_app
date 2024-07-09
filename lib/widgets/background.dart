import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, i) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.black,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,
                  ),
                ],
              );
            }),
      ),
    );
  }
}

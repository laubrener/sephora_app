import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String text;
  final String link;
  const Labels({
    super.key,
    required this.route,
    required this.text,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            child: Text(
              link,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(int.parse('0xffD93930')),
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
          )
        ],
      ),
    );
  }
}

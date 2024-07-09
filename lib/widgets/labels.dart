import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            '¿No tenes cuenta?',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            'Crea una ahora',
            style: TextStyle(
                fontSize: 16,
                color: Colors.blue[600],
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

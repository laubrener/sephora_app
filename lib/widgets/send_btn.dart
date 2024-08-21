import 'package:flutter/material.dart';

class SendBtn extends StatelessWidget {
  final String text;
  final Function onPressed;
  const SendBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () => onPressed(),
        elevation: 2,
        highlightElevation: 5,
        color: Colors.black,
        // color: Color(int.parse('0xffD93930')),
        shape: const StadiumBorder(),
        child: Container(
          width: double.infinity,
          height: 45,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}

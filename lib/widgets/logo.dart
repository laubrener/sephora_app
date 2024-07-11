import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 50),
      // width: 250,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'SEPHORA',
            style: GoogleFonts.raleway(
                fontSize: 40, letterSpacing: 6, fontWeight: FontWeight.w500),
            // style: TextStyle(
            //     fontSize: 40, fontFamily: 'monserrat', letterSpacing: 5)
          ),
          Positioned(
            top: 68,
            child: Container(
              height: 90,
              child: Text(
                'app',

                style: GoogleFonts.pacifico(
                    fontSize: 50, color: Color(int.parse('0xffD93930'))),
                // style: TextStyle(
                //     fontSize: 40, fontFamily: 'monserrat', letterSpacing: 5)
              ),
            ),
          )
        ],
      ),
    ));
  }
}

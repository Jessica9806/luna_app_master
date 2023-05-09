import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Title extends StatelessWidget {
  const Custom_Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/logo.png',
                width: 50,
                height: 50,
              ),

              SizedBox(height: 20,),

              FittedBox(
                fit: BoxFit.contain,
                child: Text('Bienvenido',
                  style: GoogleFonts.montserratAlternates(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
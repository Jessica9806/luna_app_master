import 'package:flutter/material.dart';

class BackgroundVet extends StatelessWidget {
  const BackgroundVet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:30 ),
            child: Text(
              'Misión\nPeluditos sanos y felices',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26
              ),
            ),
          ),
        ),

      ),

    );
  }

  BoxDecoration buildBoxDecoration(){
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/portada2.png'),
            fit: BoxFit.cover,
            opacity: 0.5
        )
    );
  }
}
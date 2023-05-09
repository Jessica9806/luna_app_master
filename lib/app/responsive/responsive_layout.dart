import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScalffold;
  final Widget tabletScalffold;
  final Widget desktopScalffold;

  const ResponsiveLayout({super.key,
    required this.mobileScalffold,
    required this.tabletScalffold,
    required this.desktopScalffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScalffold;
      } else if (constraints.maxWidth < 900) {
        return tabletScalffold;
      } else {
        return desktopScalffold;
      }
    }
    );
  }
}
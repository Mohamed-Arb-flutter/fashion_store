import 'package:fashion_store/Core/widghts/custom_Appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViwe extends StatelessWidget {
  const HomeViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        image1: "assets/imges/bar-chart-2.svg",
        title: "Runway",
        image2: "assets/imges/solar_bell-line-duotone.svg",
      ),
    );
  }
}

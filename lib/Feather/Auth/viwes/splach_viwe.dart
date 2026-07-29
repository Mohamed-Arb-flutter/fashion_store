import 'package:fashion_store/Feather/Auth/viwes/Home_viwe.dart';
import 'package:fashion_store/Feather/Auth/viwes/widghts/Ani.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplachViwe extends StatefulWidget {
  const SplachViwe({super.key});

  @override
  State<SplachViwe> createState() => _SplachViweState();
}

class _SplachViweState extends State<SplachViwe> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000),(){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeViwe()));});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset("assets/imges/Runway.svg")),
          Gap(10),
          SvgAnimatedLine(assetPath: 'assets/imges/Rectangle 9.svg',),
        ],
      ),
    );
  }
}

import 'package:fashion_store/Feather/Auth/viwes/splach_viwe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const fashion());
}
class fashion extends StatelessWidget {
  const fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: SplachViwe(),);
  }
}
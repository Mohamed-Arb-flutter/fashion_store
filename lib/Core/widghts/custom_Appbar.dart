import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String image1;
  final String title;
  final String image2;
  const CustomAppBar({
    super.key,
    required this.image1,
    required this.title,
    required this.image2,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,

      title: Row(
        children: [
          SvgPicture.asset(image1),
          Spacer(),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          SvgPicture.asset(image2),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAnimatedLine extends StatefulWidget {
  final String assetPath;
  final double width;
  final double height;
  final Duration duration;

  const SvgAnimatedLine({
    Key? key,
    required this.assetPath,
    this.width = 150,
    this.height = 15,
    this.duration = const Duration(milliseconds: 1000),
  }) : super(key: key);

  @override
  State<SvgAnimatedLine> createState() => _SvgAnimatedLineState();
}

class _SvgAnimatedLineState extends State<SvgAnimatedLine>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return SizedBox(
          width: widget.width,
          height: widget.height,
          child: Align(
            alignment: Alignment.centerLeft,
            // بنستخدم ClipRect عشان نخفي جزء الصورة ونظهره تدريجياً من الشمال لليمين
            child: ClipRect(
              child: Align(
                alignment: Alignment.centerLeft,
                widthFactor: _animation.value, // بيتحكم في ظهور العرض تدريجياً
                child: SizedBox(
                  width: widget.width,
                  height: widget.height,
                  child: SvgPicture.asset(
                    widget.assetPath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
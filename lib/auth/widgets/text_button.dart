import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({
    super.key,
    required this.onTap,
    required this.title,
    required this.textSize,
  });
  final Function()? onTap;
  final String title;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: textSize,
              color: const Color(0xff303030)),
        ),
      ),
    );
  }
}

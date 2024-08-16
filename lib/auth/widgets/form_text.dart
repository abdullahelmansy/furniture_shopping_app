import 'package:flutter/material.dart';

class FormText extends StatelessWidget {
  const FormText({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff909090),),
    );
  }
}

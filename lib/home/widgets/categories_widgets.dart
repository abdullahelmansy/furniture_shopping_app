import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/home/models/categorise_model.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.index, required this.model,
    
  });
  final int index;
  final CategoriseModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: index == 0 ? Colors.black : const Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            model.icon,
            color: index == 0 ? Colors.white : const Color(0xff909090),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          model.categoriesTitle,
          style: TextStyle(
            color: index == 0 ? Colors.black : const Color(0xff999999),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}

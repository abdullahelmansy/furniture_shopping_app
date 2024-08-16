import 'package:flutter/material.dart';

class CategoriseModel {
  final String categoriesTitle;
  final IconData icon;

  CategoriseModel({required this.categoriesTitle, required this.icon});
}

List<CategoriseModel> categoryList = [
  CategoriseModel(categoriesTitle: 'Popular', icon: Icons.star),
  CategoriseModel(categoriesTitle: 'Chair', icon: Icons.chair_alt),
  CategoriseModel(categoriesTitle: 'Table', icon: Icons.table_restaurant),
  CategoriseModel(categoriesTitle: 'Armchair', icon: Icons.chair),
  CategoriseModel(categoriesTitle: 'Bed', icon: Icons.bed),
  CategoriseModel(categoriesTitle: 'Lamp', icon: Icons.star),
];

import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/home/models/categorise_model.dart';
import 'package:furniture_shopping_app/home/models/product_model.dart';
import 'package:furniture_shopping_app/home/widgets/categories_widgets.dart';

import 'widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/search.png'),
        ),
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              'Make home',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xff909090)),
            ),
            Text(
              'BEAUTIFUL',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/shopping.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return CategoriesWidget(
                    model: categoryList[index],
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 25);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 21,
                      childAspectRatio: 0.75,
                      mainAxisExtent: 250),
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      model: productList[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

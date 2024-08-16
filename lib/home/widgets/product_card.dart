import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/home/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.model,
  });
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(16),
            //   child: Image.network(
            //     height: 200,
            //     model.image,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(model.image),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/Addtocartbutton.png',
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          model.title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff606060),
          ),
        ),
        Text(
          '\$ ${model.price}',
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Color(0xff303030),
          ),
        ),
      ],
    );
  }
}

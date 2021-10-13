import 'package:demo_getx/view_model/category_viewmodel.dart';
import 'package:demo_getx/view_model/product_viewmodel.dart';
import 'package:demo_getx/view/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  ProductViewModel productController = Get.put(ProductViewModel());
  CategoryViewModel categoryController = Get.put(CategoryViewModel());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Obx(
              () => GridView.builder(
                  itemCount: productController
                      .getProductByCategory(
                          categoryController.getCategorySelected())
                      .length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                        product: productController.getProductByCategory(
                            categoryController.getCategorySelected())[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: productController
                                      .getProductByCategory(categoryController
                                          .getCategorySelected())[index],
                                ),
                              ));
                        },
                      )),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:demo_getx/view_model/category_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';



class Categories extends StatelessWidget {
  CategoryViewModel categoryController = Get.put(CategoryViewModel());
  List<String> categories = CategoryViewModel().getAllCategory;
  // By default our first item will be selected

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        categoryController.setSelectedCategory(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: categoryController.selectedCategory.value == index ? kTextColor : kTextLightColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
                //top padding 5
                height: 2,
                width: 30,
                color: categoryController.selectedCategory.value == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:demo_getx/models/category.dart';
import 'package:get/get.dart';

class CategoryViewModel extends GetxController {
  List<Category> categories = [
    Category(1, "Hand bag"),
    Category(2, "Jewellery"),
    Category(3, "Footwear"),
    Category(4, "Dresses"),
  ];

  RxInt selectedCategory = 0.obs;

  Category getCategorySelected() {
    return categories[selectedCategory.value];
  }

  void setSelectedCategory(int index) {
    selectedCategory.value = index;
  }


  /*
   get all name of category
   return list name of category
   */
  List<String> get getAllCategory {
    List<String> listCategoryName = [];
    for (var element in categories) {
      listCategoryName.add(element.name);
    }
    return listCategoryName;
  }

  /*

   */

}

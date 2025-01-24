import 'package:flutter/cupertino.dart';
import 'package:online_lecture_smwu/screen/commerce/model/product_model.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({required this.productList, required this. scroll, required this.onPressed, super.key});

  final List<ProductModel> productList;
  final bool scroll;
  final Function(ProductModel productModel) onPressed;



  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
    );
  }
}

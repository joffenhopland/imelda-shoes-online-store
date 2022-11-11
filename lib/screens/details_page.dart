
import 'package:flutter/material.dart';
import 'package:imelda_shoes_online_store/constants.dart';
import 'package:imelda_shoes_online_store/models/product.dart';

import '../details_page_widgets/app_bar.dart';
import '../details_page_widgets/body.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(),
      body: Body(product: product),
    );
  }
}

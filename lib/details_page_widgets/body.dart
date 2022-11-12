import 'package:flutter/material.dart';
import 'package:imelda_shoes_online_store/constants.dart';
import 'package:imelda_shoes_online_store/details_page_widgets/product_title_with_image.dart';
import 'package:imelda_shoes_online_store/models/product.dart';

import '../constants.dart';
import 'description.dart';
// import 'add_to_cart.dart';
// import 'color_and_size.dart';
// import 'counter_with_fav_btn.dart';
// import 'description.dart';
// import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final ProductModel product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Gets total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Column(
              children: <Widget>[
                ProductTitleWithImage(product: product),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Description(product: product),
                ),
                ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kTextColor
                    ),
                    child: Text("Add to cart"))
              ],
            ),
          )
        ],
      ),
    );
  }
}


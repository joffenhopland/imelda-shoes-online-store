import 'package:flutter/material.dart';
import 'package:imelda_shoes_online_store/models/product.dart';
import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.title!,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.network(
                    product.image!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
            ],
          ),
          SizedBox(width: kDefaultPaddin),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          )
    );
  }
}
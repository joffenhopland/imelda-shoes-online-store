import 'package:flutter/material.dart';
import 'package:imelda_shoes_online_store/api/imelda_shoes_api.dart';
import 'package:imelda_shoes_online_store/models/customer.dart';
import 'package:imelda_shoes_online_store/models/product.dart';
import 'package:imelda_shoes_online_store/home_page_widgets/app_bar.dart';
import 'package:imelda_shoes_online_store/home_page_widgets/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<ProductModel> products;
  late List<CustomerModel> customers;


  // load all products
  Future loadAllProducts() async {
    final products = await ImeldaShoesApi().getAllProducts();
    setState(() => this.products = products);
  }

  // load all customers
  // Future loadAllCustomers() async {
  //   final customers = await ImeldaShoesApi().getAllCustomers();
  //   setState(() => this.customers = customers);
  // }

  @override
  void initState() {
    super.initState();
    loadAllProducts();
    // loadAllCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Body(products: products),
    );



    //   Column(
    //   children: [
    //     Expanded(child: ListView.builder(
    //       itemCount: customers.length,
    //         itemBuilder: (context, index) {
    //         return Card(
    //           child: ListTile(
    //             title: Text(customers[index].email??""),
    //           ),
    //         );
    //         }))
    //   ],
    // );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:now/src/pages/members/widgets/manage_product_vertical_card.dart';

class ManageProductsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ManageProductsPageState();
}

class _ManageProductsPageState extends State<ManageProductsPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Feather.arrow_left,
            size: _size.width / 15.0,
            color: Colors.grey.shade800,
          ),
        ),
        title: Text(
          'Products',
          style: TextStyle(
            fontSize: _size.width / 21.0,
            color: Colors.grey.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed('/addproduct'),
            icon: Icon(
              Feather.plus,
              size: _size.width / 14.0,
              color: Colors.blueAccent.shade400,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ManageProductVerticalCard();
          },
        ),
      ),
    );
  }
}

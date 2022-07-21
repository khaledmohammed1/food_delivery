import 'package:flutter/material.dart';
import 'package:food_delivery/views/widgets/single_item.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children:  [
          const SizedBox(
            height: 10,
          ),
          SingleItem(),
          SingleItem(),
          SingleItem(),
        ],
      ),
      bottomNavigationBar: ListTile(
        subtitle: const Text(
          "\$ price",
          style: TextStyle(fontWeight: FontWeight.w500,color: primaryColor),
        ),
        title: const Text(
          "Total Amount",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: MaterialButton(
            color: primaryColor,
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: const Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: ()=>Get.back(), icon:const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        actions: const  [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: primaryColor,
              child: Icon(
                Icons.menu_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
        title: const Text(
          "Cart",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: primaryColor,
      ),
    );
  }
}

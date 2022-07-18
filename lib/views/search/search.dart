import 'package:flutter/material.dart';
import 'package:food_delivery/views/search/search_item.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Search",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
        const ListTile(
          title: Text("Items"),
        ),
          Container(
            height: 55,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
                fillColor: primaryColor.withOpacity(.05),
                filled: true,
                hintText: "Search for items in the store",
                suffixIcon: const Icon(Icons.search_outlined),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const SearchItem(),
          const SearchItem(),
          const SearchItem(),
          const SearchItem(),
          const SearchItem(),
          const SearchItem()
      ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

enum SingleCharacter { fill, outline }

class ProductOverView extends StatefulWidget {
   ProductOverView({Key? key,required this.url,required this.price,required this.description,required this.title}) : super(key: key);
   String url;
   String title;
   String price;
   String description;
  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  SingleCharacter _character = SingleCharacter.fill;

  Widget buttonNavBar(
      {required Color iconColor,
      required Color backgroundColor,
      required Color color,
      required String title,
      required IconData iconData}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 24,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buttonNavBar(
            iconColor: primaryColor,
            backgroundColor: Colors.white,
            color: primaryColor,
            title: "Add to wishList",
            iconData: Icons.favorite_border_outlined,
          ),
          buttonNavBar(
            iconColor: Colors.white,
            backgroundColor: primaryColor,
            color: Colors.white,
            title: "Add to Cart",
            iconData: Icons.shopping_cart,
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => Get.back(),
        ),
        title:  const Text(
          "",
          style:  TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  child: Image.network(
                    widget.url,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .03,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: const Text(
                    "Available Options",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: SingleCharacter.fill,
                        groupValue: _character,
                        onChanged: (SingleCharacter? value) {
                          setState(() {
                            _character = value!;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                       Text(widget.price),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .2,
                        height: MediaQuery.of(context).size.width * .1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: primaryColor)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add,
                              size: 18,
                              color: primaryColor,
                            ),
                            Text(
                              "Add",
                              style: TextStyle(color: primaryColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    "About this Product",
                    style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

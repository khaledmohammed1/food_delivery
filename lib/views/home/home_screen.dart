import 'package:flutter/material.dart';
import 'package:food_delivery/views/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget singleProduct() {
      return Padding(
        padding: const EdgeInsets.only(right: 10, top: 5, bottom: 10),
        child: Container(
          height: 220,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://res.cloudinary.com/kha10led/image/upload/v1653869382/ecommerce/grilled-beef-steak-dark-wooden-surface_qydxgo.jpg",
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Meat",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Meat",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: primaryColor,
              child: Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: primaryColor.withOpacity(.05),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://res.cloudinary.com/kha10led/image/upload/v1655780709/ecommerce/banner3_dyn0o4.webp"),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Meals",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Meals",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

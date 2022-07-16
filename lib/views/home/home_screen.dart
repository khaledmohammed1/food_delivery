import 'package:flutter/material.dart';
import 'package:food_delivery/views/constants/constants.dart';

import '../widgets/drawer_list_view.dart';
import '../widgets/listTile.dart';
import '../widgets/single_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * .8,
        child: Container(
          color: primaryColor.withOpacity(.05),
          child: const Drawer_list_view(),
        ),
      ),
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
                  height: MediaQuery.of(context).size.height*.25,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://res.cloudinary.com/kha10led/image/upload/v1657931610/ecommerce/louis-hansel-K47107aP8UU-unsplash_cyzsdq.jpg"),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
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
                      SingleProduct(
                        url:
                            "https://res.cloudinary.com/kha10led/image/upload/v1653869382/ecommerce/grilled-beef-steak-dark-wooden-surface_qydxgo.jpg",
                        title: 'grilled-beef',
                        price: "50",
                        description:
                            'In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer',
                      ),
                      SingleProduct(
                        title: "chicken",
                        price: "30",
                        url:
                            "https://res.cloudinary.com/kha10led/image/upload/v1653869154/ecommerce/christmas-table-served-with-turkey-decorated-with-bright-tinsel-candles_helklj.jpg",
                        description:
                            'In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer',
                      ),
                      SingleProduct(
                        title: "fried-chicken",
                        price: "30",
                        url:
                            "https://res.cloudinary.com/kha10led/image/upload/v1653869027/ecommerce/fried-chicken-french-fries-black-cement-floor_fgp1ia.jpg",
                        description:
                            'In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer',
                      ),
                      SingleProduct(
                        title: "pizza",
                        price: "35",
                        url:
                            "https://res.cloudinary.com/kha10led/image/upload/v1653864130/ecommerce/pizza-pizza-filled-with-tomatoes-salami-olives_kxn5c4.jpg",
                        description:
                            'In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer',
                      ),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
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
                    children: const [],
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


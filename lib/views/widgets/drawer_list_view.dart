// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:food_delivery/views/cart/cart.dart';
import 'package:food_delivery/views/home/home_screen.dart';
import 'package:food_delivery/views/profile/profile.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
import 'listTile.dart';

class drawerListView extends StatelessWidget {
  const drawerListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Welcome Guest"),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: 30,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all<Color>(
                              primaryColor.withOpacity(.05)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Listtile(
            icon: Icons.home_outlined,
            title: "Home",
            ontap: () => Get.to(
              () => const HomeScreen(),
            ),
          ),
          Listtile(
            icon: Icons.shop_outlined,
            title: "Cart",
            ontap: () => Get.to(
              () => const Cart(),
            ),
          ),
          Listtile(
            icon: Icons.person_outline,
            title: "My Profile",
            ontap: () => Get.to(
              () => const MyProfile(),
            ),
          ),
          Listtile(
              icon: Icons.notifications_active_outlined,
              title: "Notification",
              ontap: () {}),
          Listtile(
              icon: Icons.star_border_outlined,
              title: "Rating and Review",
              ontap: () {}),
          Listtile(
              icon: Icons.favorite_border_outlined,
              title: "Wishlist",
              ontap: () {}),
          Listtile(
              icon: Icons.copy_all_outlined,
              title: "Raise a Complaint",
              ontap: () {}),
          Listtile(
              icon: Icons.format_quote_outlined, title: "FAQs", ontap: () {}),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: SizedBox(
              height: 350,
              child: Column(
                children: [
                  const Text(
                    "Contact Support",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text("Call Us:"),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        " +201002820554",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text("Mail Us:"),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        " kha103led@yahoo.com",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

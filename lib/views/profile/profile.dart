import 'package:flutter/material.dart';
import 'package:food_delivery/views/constants/constants.dart';

import '../widgets/drawer_list_view.dart';
import '../widgets/listTile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget listTile({required IconData icon, required String title}) {
      return Column(
        children: [
          const Divider(
            height: 1,
          ),
          ListTile(
            leading: Icon(icon),
            title: Text(title),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * .8,
        child: Container(
          color: primaryColor.withOpacity(.05),
          child: const drawerListView(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7825,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: const EdgeInsets.only(left: 32,top: 10),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "khaled mohammed",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("kha103led@yahoo.com"),
                                  ],
                                ),
                                const SizedBox(
                                  width: 43,
                                ),
                                const CircleAvatar(
                                  backgroundColor: primaryColor,
                                  radius: 14,
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      listTile(icon: Icons.shopping_cart, title: "My Order"),
                      listTile(
                          icon: Icons.location_on_outlined,
                          title: "My Delivery Address"),
                      listTile(
                          icon: Icons.person_outline, title: "Refer A Friends"),
                      listTile(
                          icon: Icons.file_copy_outlined,
                          title: "Term & Conditions"),
                      listTile(
                          icon: Icons.policy_outlined, title: "Privacy Policy"),
                      listTile(icon: Icons.add_chart, title: "About"),
                      listTile(
                          icon: Icons.exit_to_app_outlined, title: "Log Out"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * .1),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(""),
              backgroundColor: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

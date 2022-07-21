import 'package:flutter/material.dart';
import 'package:food_delivery/views/constants/constants.dart';

class SingleItem extends StatelessWidget {
  SingleItem({Key? key,this.inCart = false}) : super(key: key);
  bool inCart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 4),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Image.network(
                "https://res.cloudinary.com/kha10led/image/upload/v1653869382/ecommerce/grilled-beef-steak-dark-wooden-surface_qydxgo.jpg",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 100,
              width: 98,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      Text(
                        "productName",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "price",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.grey),
                      ),
                    ],
                  ),
                  // Container(
                  //   margin: const EdgeInsets.only(right: 15),
                  //   padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   height: 35,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: primaryColor.withOpacity(.3),
                  //       ),
                  //       borderRadius: BorderRadius.circular(8)),
                  //   child: Row(
                  //     children: const [
                  //       Expanded(
                  //         child: Text(
                  //           "1 K",
                  //           style: TextStyle(color: Colors.grey, fontSize: 14),
                  //         ),
                  //       ),
                  //       Center(
                  //         child: Icon(
                  //           Icons.arrow_drop_down,
                  //           size: 20,
                  //           color: primaryColor,
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor.withOpacity(.3),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add,
                          color: primaryColor,
                        ),
                        Text(
                          "ADD",
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor.withOpacity(.3),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.delete_outline,
                          color: primaryColor,
                        ),
                        Text(
                          "Delete",
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

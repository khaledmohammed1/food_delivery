import 'package:flutter/material.dart';
import 'package:food_delivery/views/constants/constants.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: SizedBox(
                height: 100,
                child: Center(
                  child: Image.network(
                    "https://res.cloudinary.com/kha10led/image/upload/v1653869382/ecommerce/grilled-beef-steak-dark-wooden-surface_qydxgo.jpg",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 100,
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
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor.withOpacity(.3),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            "1 K",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        Center(
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                            color: primaryColor,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 32),
              child: Container(
                height: 25,
                width: 50,
                decoration:  BoxDecoration(
                  border: Border.all(color: primaryColor.withOpacity(.3),),
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
                      Text("ADD",style: TextStyle(color: primaryColor),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

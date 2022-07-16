import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product_overview/product_overview.dart';
class SingleProduct extends StatelessWidget {
   SingleProduct({Key? key,required this.url,required this.title,required this.price,required this.description}) : super(key: key);
  String url;
  String title;
  String price;
  String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 5, bottom: 10),
      child: GestureDetector(
        onTap: ()=> Get.to(()=>ProductOverView(description: description,url: url,price: price,title: title,)),
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
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        url
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
                    children:  [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
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
      ),
    );
}
}

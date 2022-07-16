import 'package:flutter/material.dart';
class Listtile extends StatelessWidget {

  Listtile({Key? key, required this.title, required this.icon,required this.ontap}) : super(key: key);
   final String title;
   final IconData icon;
   final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        leading: Icon(
          icon,
          size: 24,
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentList extends StatelessWidget {
  final logo;
  final String text1;
  final String text2;
  final String price1;
  const RecentList(
      {super.key,
      required this.logo,
      required this.text1,
      required this.text2,
      required this.price1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey,
              offset: Offset(4, 4),
            ),
            BoxShadow(
              blurRadius: 5,
              color: Colors.white,
              offset: Offset(-4, -4),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                  image: DecorationImage(image: NetworkImage(logo))),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.red[400],
              ),
              child: Center(
                  child: Text(
                '\$' + price1 + '/h',
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}

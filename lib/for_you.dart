// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForYou extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  final color;
  const ForYou(
      {super.key,
      required this.image,
      required this.text,
      required this.price,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey,
              offset: Offset(2, 2),
            ),
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey,
              offset: Offset(-2, -2),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover)),
                ),
                Container(
                  height: 35,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Full Time',
                    style: TextStyle(color: Colors.grey[200]),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '\$' + price + '/h',
                  style: TextStyle(color: Colors.grey[350]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

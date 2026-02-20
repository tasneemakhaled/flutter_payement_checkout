import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.price, required this.textStyle});
final String title,price;
final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
      Text(title,style: textStyle,),
      Spacer(),
      Text(price,style: textStyle,),
    ],);
  }
}
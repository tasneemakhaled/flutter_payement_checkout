import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Image.asset('assets/images/cart.png',height: 300,),
    ],);
  }
}
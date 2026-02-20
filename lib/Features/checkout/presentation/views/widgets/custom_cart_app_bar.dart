import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class CustomCartAppBar extends StatelessWidget {
  const CustomCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: Text('My Cart',style: Styles.style25),centerTitle: true,);
    
  }
}
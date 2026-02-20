import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [
        Expanded(child: Image.asset('assets/images/cart.png',height: 300,)),
        SizedBox(height: 15,),
        OrderInfoItem(title: 'Order SubTotal',textStyle: Styles.style18,price: '42.97\$'),
        SizedBox(height: 3,),
        OrderInfoItem(title: 'Discount', price: '0\$',textStyle: Styles.style18,),
        SizedBox(height: 3,),
        OrderInfoItem(title: 'Shipping', price: '8\$',textStyle: Styles.style18,),
        SizedBox(height: 3,),
        Divider(indent: 15,endIndent: 15,),
        OrderInfoItem(title: 'Total', price: '50.97\$',textStyle: Styles.style24,),
        SizedBox(height: 10,),
        CustomButton(),
        SizedBox(height: 10,),
      ],),
    );
  }
}
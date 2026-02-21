import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_method_item.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          
          children: [
     PaymentMethodItem(image: 'assets/images/credit_card.svg',isActive: true,),
     SizedBox(width: 30,),
          PaymentMethodItem(isActive: false, image: 'assets/images/paypal.svg')
          ],
        )
      ],
    );
  }
}
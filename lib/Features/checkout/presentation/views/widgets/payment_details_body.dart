import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_methods_list_view.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PayementMethodsListView(),
       CustomCreditCard(),
      ],
    );
  }
}
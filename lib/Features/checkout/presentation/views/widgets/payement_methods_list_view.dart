import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_method_item.dart';

class PayementMethodsListView extends StatefulWidget {
  const PayementMethodsListView({super.key});

  @override
  State<PayementMethodsListView> createState() => _PayementMethodsListViewState();
}

class _PayementMethodsListViewState extends State<PayementMethodsListView> {
final List<String> methods=[
  'assets/images/credit_card.svg',
  'assets/images/paypal.svg',
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: methods.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: PaymentMethodItem(isActive: true, image: methods[index]),
        );
      }),
    );
  }
}
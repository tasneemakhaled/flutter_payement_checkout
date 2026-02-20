import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Payment Details',style: Styles.style25,),centerTitle: true,),
    );
  }
}
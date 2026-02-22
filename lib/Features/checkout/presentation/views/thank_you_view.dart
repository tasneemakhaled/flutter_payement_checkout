import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: ThankYouViewBody(),
    );
  }
}
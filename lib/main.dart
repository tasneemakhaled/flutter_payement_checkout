import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  Stripe.publishableKey= "pk_test_51T4UMrKyNg9IW7Jaodnyp0omH6KZI3wopzktU8wwA5kV3N73JhafupXYy0MBALfbuFUr4t9sjvumYsi7MQfmxYH900DX1Vk8O7";
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );}}
// Future<void> initPaymentSheet() async {
//   try {
   
   

//     // 3. Initialize the payment sheet
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         // Main params
//         paymentIntentClientSecret: data['paymentIntent'],
//         merchantDisplayName: 'Flutter Stripe Store Demo',
       
//         // Return URL for redirect-based payment methods
//         returnURL: 'flutterstripe://redirect',
        
//       ),
//     );
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: $e')),
//     );
//     rethrow;
//   }
// }

    //1- create payment intent (amount,currency)
    //2- init payment sheet (paymentIntentClientSecret,merchantDisplayName)
    // present payment sheet
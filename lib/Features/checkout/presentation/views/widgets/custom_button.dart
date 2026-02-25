import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/payment_details_view.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_methods_bottom_sheet.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff34a853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),

        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context){
          //   return PaymentDetailsView();
          // }));
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return PayementMethodsBottomSheet();
            },
          );
        },
        child: Text('Complete Payement', style: Styles.style22),
      ),
    );
  }
}

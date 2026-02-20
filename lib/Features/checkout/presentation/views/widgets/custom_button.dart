import 'package:flutter/material.dart';
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
        ),
        
        onPressed: (){}, child: Text('Complete Payement',style: Styles.style22,),),
    );
  }
}
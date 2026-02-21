import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_methods_list_view.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PayementMethodsListView(),
         CustomCreditCard(),
         
         SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff34a853),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
          ),
          
          onPressed: (){
           
          }, child: Text('Pay',style: Styles.style22,),),
      ),
        ],
      ),
    );
  }
}
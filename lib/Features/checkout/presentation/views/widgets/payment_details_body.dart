import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/payement_methods_list_view.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
final GlobalKey<FormState> formKey=GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:[
SliverToBoxAdapter(child: PayementMethodsListView()),
         SliverToBoxAdapter(
          
          child: CustomCreditCard(formKey: formKey,autovalidateMode: autovalidateMode,)),
         
         SliverFillRemaining(
          hasScrollBody: false,
 child: Padding(
   padding: const EdgeInsets.only(bottom: 8.0,left: 8,right: 8),
   child: Align(
    alignment: Alignment.bottomCenter,
     child: SizedBox(
             width: double.infinity,
             height: 55,
             child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff34a853),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
      ),
      
      onPressed: (){
       if(formKey.currentState!.validate()){
        formKey.currentState!.save();
       }else{
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return ThankYouView();
        }));
        autovalidateMode=AutovalidateMode.always;
        setState(() {
          
        });
       }
      }, child: Text('Pay',style: Styles.style22,),),
           ),
   ),
 ),
         ),
      ] 
    );
  }
}
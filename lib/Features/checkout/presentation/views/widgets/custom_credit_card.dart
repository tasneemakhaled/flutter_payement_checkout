import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key,});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
 String cardNumber='';
 String expiryDate='';
 String cardHolderName='';
 String cvvCode='';
bool showBackView=false;
final GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isChipVisible: true,
          cardNumber: cardNumber, 
          expiryDate: expiryDate, 
          cardHolderName: cardHolderName, 
          cvvCode: cvvCode,
           showBackView: showBackView,
            onCreditCardWidgetChange: (value){}
            ),
        CreditCardForm(
          
          cardNumber: cardNumber,
           expiryDate: expiryDate,
            cardHolderName: cardHolderName,
             cvvCode: cvvCode,
              onCreditCardModelChange: (creditCardModel){
               setState(() {
  cardNumber=creditCardModel.cardNumber;
  cardHolderName=creditCardModel.cardHolderName;
  expiryDate=creditCardModel.expiryDate;
  cvvCode=creditCardModel.cvvCode;
  showBackView=creditCardModel.isCvvFocused;
});
        },
         formKey: formKey),
//          Spacer(),
//           Padding(
//    padding: const EdgeInsets.symmetric(horizontal: 8.0),
//    child: SizedBox(
//            width: double.infinity,
//            height: 60,
//            child: ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Color(0xff34a853),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
//     ),
    
//     onPressed: (){
     
//     }, child: Text('Pay',style: Styles.style22,),),
//          ),
//  ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';


class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.formKey, required this.autovalidateMode,});
final GlobalKey<FormState> formKey;
final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
 String cardNumber='';
 String expiryDate='';
 String cardHolderName='';
 String cvvCode='';
bool showBackView=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          isChipVisible: true,
          cardNumber: cardNumber, 
          expiryDate: expiryDate, 
          cardHolderName: cardHolderName, 
          cvvCode: cvvCode,
           showBackView: showBackView,
            onCreditCardWidgetChange: (value){}
            ),
        CreditCardForm(
          isHolderNameVisible: true,
          autovalidateMode: widget.autovalidateMode,
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
         formKey: widget.formKey),
         SizedBox(height: 100,)
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
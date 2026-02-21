import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
        
          ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height*.2+20,
            right: 28,
            left: 28,
            child: CustomDashedLine(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height*.2,
            left: -20,
            child: CircleAvatar(backgroundColor: Colors.white,)),
              Positioned(
            bottom: MediaQuery.of(context).size.height*.2,
            right: -20,
            child: CircleAvatar(backgroundColor: Colors.white,)),
           Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50, 
              backgroundColor: Color(0xffD9D9D9),child: CircleAvatar(
                radius: 40,
              backgroundColor: Color(0xff34A853),child: Icon(Icons.check,color: Colors.white,size: 50,),),))
        ],
      ),
    );
  }
}

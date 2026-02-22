
import 'package:flutter/material.dart';
import 'package:flutter_payement_checkout/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:flutter_payement_checkout/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
      decoration: ShapeDecoration(
           color: Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))),
        child:Padding(
          padding: const EdgeInsets.only(top: 70,left: 16,right: 16),
          child: Column(
            children: [
             
              Text('Thank You!',style: Styles.style25,),
              FittedBox(child: Text('Your Transaction was successful',style: Styles.style20,)),
              SizedBox(height: 42,),
              OrderInfoItem(title: 'Date', price: '1/2/2003', textStyle: Styles.style18),
              SizedBox(height: 10,),
              OrderInfoItem(title: 'Time', price: '10:15 AM', textStyle: Styles.style18),
              SizedBox(height: 10,),
              OrderInfoItem(title: 'To', price: 'Tasneem Khaled', textStyle: Styles.style18),
              Divider(height: 60,thickness: 2,),       
              OrderInfoItem(title: 'Total', price: '50.97\$', textStyle: Styles.style25),
               SizedBox(height: 10,),
               Container(
              
                decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))),
                  child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
             
                    children: [
                      SvgPicture.asset('assets/images/logo.svg'),
                      
                      Column(
                        children: [
                        Text('Credit Card',style: Styles.style18,),
                        Text('         Master Card **78',style: Styles.style18,),
                      ],)
                    ],
                  ),
                ),
              
                ),
            ],),
        )
    );
  }
}
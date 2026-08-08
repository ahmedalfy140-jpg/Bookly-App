import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookRate extends StatelessWidget {
   const CustomBookRate({super.key,  this.mainAxisAlignment=MainAxisAlignment.start});
 
  final MainAxisAlignment mainAxisAlignment;

 

  @override
  Widget build(BuildContext context, ) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      
      children: [
    IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.solidStar,size: 14,)),
    // SizedBox(width: 3,),
    Text('4.8',style: Styles.textStyle16),
    SizedBox(width: 3,),
     Text('(2380)',style: Styles.textStyle14),
    ],);
  }
}
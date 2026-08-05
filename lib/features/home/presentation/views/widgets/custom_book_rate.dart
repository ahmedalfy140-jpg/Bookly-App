import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookRate extends StatelessWidget {
  const CustomBookRate({super.key});

  @override
  Widget build(BuildContext context, ) {
    return Row(children: [
     
      
    IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.solidStar)),
    // SizedBox(width: 3,),
    Text('4.8',style: Styles.textStyle16),
    SizedBox(width: 3,),
     Text('(2380)',style: Styles.textStyle14),
    ],);
  }
}
import 'package:flutter/material.dart';

class slidingtext extends StatelessWidget {
  const slidingtext({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation, builder: (BuildContext context, Widget? child) {return SlideTransition(
        position:slidingAnimation ,
        child: Text(
          'Reed Free Book', textAlign:TextAlign.center),
      );  },
     
    );
  }
}
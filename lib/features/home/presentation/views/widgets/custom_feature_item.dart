import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomFeatureItem extends StatelessWidget {
  const CustomFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.red,
         
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(AssetsData.testImage))
        ),
      
      ),
    );
  }
}



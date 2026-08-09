import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: 'Search...',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white),
          ),
           contentPadding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 16,
          ),
        ),
        
      ),
    );
  }
}


import 'package:bookly_app/features/home/presentation/manger/best_sellar_books_cubit/best_sellar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/search_view_cubit/search_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFiled extends StatefulWidget {
   const CustomSearchTextFiled({super.key});

  @override
  State<CustomSearchTextFiled> createState() => _CustomSearchTextFiledState();
}

class _CustomSearchTextFiledState extends State<CustomSearchTextFiled> {
   @override
  void initState() {
     super.initState();
    BlocProvider.of<BestSellarBooksCubit>(context).fetchBestSellarBook();

     
   
  }
  bool isSearch =false;
  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        onChanged: (value){
          context.read<SearchBooksCubit>().searchBooks(value);


        },
        
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: 'Search...',
          suffixIcon: IconButton(
            onPressed: () {setState(() {
                isSearch = !isSearch;
                if (!isSearch) {
                  searchController.clear();
                  context.read<SearchBooksCubit>().searchBooks('');
                }
              });},
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

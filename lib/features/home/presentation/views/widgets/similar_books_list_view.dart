import 'package:bookly_app/features/home/presentation/manger/feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/feature_book_cubit/feature_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FeatureBookCubit,FeatureBooksState>(builder:(context,state){
      if (state is FeatureBookSuccess){
        return SizedBox(
      height: MediaQuery.of(context).size.height*.2,
      child: ListView.builder(
        itemCount: state.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {  
        return Padding(
          padding: const EdgeInsets.only(left: 8,top: 8),
          child: CustomBookImage(imageUrl: state.books[index].image),
        );
      },),
    );
      }else if (state is FeatureBookFailure){
        return CustomErorrWidget(errMessage: state.errMessage);
      }else{
        return Center(child: CircularProgressIndicator());
      }
    } );
  }
}
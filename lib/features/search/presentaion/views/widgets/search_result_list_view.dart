


import 'package:bookly_app/features/home/presentation/manger/search_view_cubit/search_view_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/search_view_cubit/search_view_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView(  {super.key, });
 

  
 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit,SearchBookState>(builder: (context,state){
      if (state is SearchViewStateSuccess){
        return ListView.builder(
      itemCount: state.bookModel.length,

      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomBookItem(book: state.bookModel[index],),
          ),
        );
      },
    );
      }else if(state is SearchViewStateFailure){
        return CustomErorrWidget(errMessage: state.errMessage);
      }else{
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}

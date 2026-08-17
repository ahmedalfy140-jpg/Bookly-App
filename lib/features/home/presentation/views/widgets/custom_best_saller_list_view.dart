import 'package:bookly_app/features/home/presentation/manger/best_sellar_books_cubit/best_sellar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/best_sellar_books_cubit/best_sellar_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class CustomBestSallerListView extends StatelessWidget {
//   const CustomBestSallerListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: false,
//       itemCount: 10,
//       scrollDirection: Axis.vertical,

//       itemBuilder: (BuildContext context, int index) {
//         return CustomBookItem();
//       },
//     );
//   }
// }

class CustomBestSallerListView extends StatelessWidget {
  const CustomBestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellarBooksCubit,BestSellarBooksState>(builder: (context,state){
      if(state is BestSellarBooksSuccess){
        return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child:  CustomBookItem(book: state.books[index]),
          );
        },
        childCount: state.books.length,
      ),
    );
      }else if(state is BestSellarBooksFailure){
        return SliverToBoxAdapter(child: CustomErorrWidget(errMessage: state.errMessage));
      }else{
        return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
      }
    });
  }
}

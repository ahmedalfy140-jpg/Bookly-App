import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rate.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  
  final BookModel book;

  const BookDetailsBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return  

    CustomScrollView(

      slivers: [
        
        SliverFillRemaining(
          hasScrollBody: false,
          child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookDitailsCustomAppBar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:width*.260),
              child: CustomBookImage(imageUrl: book.image,),
              
              
            ),
            SizedBox(height:30 ,),
            SizedBox(width:double.infinity , child:  Text(book.title,style:Styles.textStyle30,textAlign: TextAlign.center,)),
            SizedBox(height: 3,),
             Text(book.author.toString(),style:Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500)),
              SizedBox(height: 6,),
              CustomBookRate(mainAxisAlignment: MainAxisAlignment.center,),
              BookAction(),
              Expanded(child: SizedBox(height: 40,)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('You can also like',style:TextStyle(fontSize: 16))),
              SizedBox(height: 10,),
              
              SimilarBooksListView(),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      
    )
        )
      ],
    )
      ;
  }
}


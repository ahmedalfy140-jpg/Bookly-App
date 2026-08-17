import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView(this.books, {super.key});
  final List<BookModel>books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,

      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomBookItem(book: books[index]),
        );
      },
    );
  }
}

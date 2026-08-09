import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextFiled(),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Best Saller', style: Styles.textStyle20),
        ),
        SizedBox(height: 16),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}

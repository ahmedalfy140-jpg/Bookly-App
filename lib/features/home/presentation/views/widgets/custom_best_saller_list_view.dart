import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

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
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const CustomBookItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}

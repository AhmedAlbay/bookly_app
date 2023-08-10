import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar.dart';

import 'package:bookly_app/Features/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:bookly_app/core/utils/styless.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Saller',
            style: Styless.tilteMedium,
          ),
        ],
      ),
    );
  }
}

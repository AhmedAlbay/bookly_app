import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: CustomBookImage(
                imageUrl:
                    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.macrumors.com%2Ft%2FZsnMKNSBAtA2XLfLI-JCm1uOaUc%3D%2F1600x1200%2Fsmart%2Farticle-new%2F2018%2F01%2Fbooksiconios113.jpg&tbnid=PB0ZLQXXSdxoOM&vet=12ahUKEwiomsjaw52BAxXDVKQEHZwSCwEQMygEegQIARBg..i&imgrefurl=https%3A%2F%2Fwww.macrumors.com%2F2018%2F01%2F25%2Fapple-redesigned-book-app%2F&docid=vx2zlLp0qjgdxM&w=1600&h=1200&q=image%20book%20for%20app&ved=2ahUKEwiomsjaw52BAxXDVKQEHZwSCwEQMygEegQIARBg',
              ),
            );
          }),
    );
  }
}

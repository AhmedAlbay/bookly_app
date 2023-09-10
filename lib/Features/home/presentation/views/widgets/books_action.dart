import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/functions/launcher_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const CustomButton(
            text: 'Free',
            textcolor: Colors.black,
            backgroungcolor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
          CustomButton(
            onPressed: () async {
              launcherCustomUrl(context, bookModel.volumeInfo!.previewLink);
            },
            text: getText(bookModel),
            textcolor: Colors.white,
            backgroungcolor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return ('Not Available');
    } else {
      return ('Preview');
    }
  }
}

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/errors/failure_class.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

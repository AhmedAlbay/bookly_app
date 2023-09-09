part of 'newest_cubit_cubit.dart';

sealed class NewestBooksCubitState extends Equatable {
  const NewestBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksCubitState {}

final class NewestBooksLoading extends NewestBooksCubitState {}

final class NewestBooksSuccess extends NewestBooksCubitState {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);
}

final class NewestBooksFailure extends NewestBooksCubitState {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}

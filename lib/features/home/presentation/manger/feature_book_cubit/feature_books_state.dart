import 'package:bookly_app/features/home/data/models/book_model.dart';

abstract class FeatureBooksState {}

class FeatureBookInitial extends FeatureBooksState {}
class FeatureBookLoading extends FeatureBooksState {}
class FeatureBookFailure extends FeatureBooksState {final String errMessage ;

  FeatureBookFailure(this.errMessage); }
class FeatureBookSuccess extends FeatureBooksState {
  final List <BookModel> books;

  FeatureBookSuccess(this.books);
}
  

import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/feature_book_cubit/feature_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBookCubit extends Cubit<FeatureBooksState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeatureBook();
    result.fold(
      (failure) {
        emit(FeatureBookFailure(failure.errorMessage));
      },
      (books) {
        emit(FeatureBookSuccess(books));
      },
    );
  }
}

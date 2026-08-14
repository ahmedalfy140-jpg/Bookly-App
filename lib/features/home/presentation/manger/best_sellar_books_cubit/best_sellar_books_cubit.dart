
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/best_sellar_books_cubit/best_sellar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellarBooksCubit extends Cubit<BestSellarBooksState> {
  BestSellarBooksCubit(this.homeRepo) : super(BestSellarBooksInitail());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellarBook() async {
    emit(BestSellarBooksLoading());
    var result = await homeRepo.fetchBestSellarBook();
    result.fold(
      (failure) {
        emit(BestSellarBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(BestSellarBooksSuccess(books));
      },
    );
  }
}

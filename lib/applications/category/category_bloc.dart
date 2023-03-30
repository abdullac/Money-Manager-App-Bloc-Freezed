import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState.initial()) {
    on<ChangeCategoryScreen>((event, emit) {
      List<TransactionModel> transactionsModelList =
          CategoryRepo.getTransactionModelList(event.position);
      emit(state.copyWith(
          position: event.position,
          transactionsModelList: transactionsModelList));
    });
  }
}

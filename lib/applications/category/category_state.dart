part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required int position,
    required List<TransactionModel> transactionsModelList,
  }) = _CategoryState;
  factory CategoryState.initial() {
    return const CategoryState(
      position: 0,
      transactionsModelList: [],
    );
  }
}

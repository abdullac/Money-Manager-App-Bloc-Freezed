part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required int position,
    required List<TransactionModel> transactionsModelList,
    required List<String?> categoryList,
    required TransactionType transactionType,
    required Widget? categoryTransactionsListPage,
    required String? category,
    required bool? isListByCategory,
  }) = _CategoryState;
  factory CategoryState.initial() {
    return const CategoryState(
      position: 0,
      transactionsModelList: [],
      categoryList: [],
      transactionType: TransactionType.income,
      categoryTransactionsListPage: null,
      category: null,
      isListByCategory: false,
    );
  }
}

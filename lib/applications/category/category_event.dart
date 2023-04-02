part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.changeCategoryScreen({
    required int position,
  }) = ChangeCategoryScreen;

  const factory CategoryEvent.goToIncomeCatogoryPage() = GoToIncomeCatogoryPage;

  const factory CategoryEvent.goToExpenseCatogoryPage() =
      GoToExpenseCatogoryPage;

  const factory CategoryEvent.viewTransactionListByCatogory({
    required TransactionType transactionType,
    required String category,
  }) = ViewTransactionListByCatogory;
}

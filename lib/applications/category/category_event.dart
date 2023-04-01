part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.changeCategoryScreen({
    required int position,
  }) = ChangeCategoryScreen;

  // const factory CategoryEvent.goToIncomeCatogoryPage({
  //   // required int position,
  //   // required TransactionType transactionType,
  //   // required String category,
  //   required Widget gotocategoryTransactionsPage,
  // }) = GoToIncomeCatogoryPage;

  const factory CategoryEvent.goToIncomeCatogoryPage() = GoToIncomeCatogoryPage;

  const factory CategoryEvent.goToExpenseCatogoryPage() = GoToExpenseCatogoryPage;

  // const factory CategoryEvent.viewTransactionCatogoryPage({
  //   // required int position,
  //   required TransactionType transactionType,
  //   required String category,
  // }) = ViewTransactionCatogoryPage;

    const factory CategoryEvent.viewTransactionListByCatogory({
    // required int position,
    required TransactionType transactionType,
    required String category,
  }) = ViewTransactionListByCatogory;
}

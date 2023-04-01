part of 'transaction_view_bloc.dart';

@freezed
class TransactionViewEvent with _$TransactionViewEvent {
  const factory TransactionViewEvent.transactionViewPage({
    required Widget? transactionViewPage,
  }) = TransactionViewPage;

   const factory TransactionViewEvent.deleteItem({
    required TransactionModel transactionModel,
  }) = DeleteItem;

  
}
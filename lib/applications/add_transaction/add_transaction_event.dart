part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionEvent with _$AddTransactionEvent {
  const factory AddTransactionEvent.saveTransaction({
    required TransactionModel transactionModel,
  }) = SaveTransaction;
}
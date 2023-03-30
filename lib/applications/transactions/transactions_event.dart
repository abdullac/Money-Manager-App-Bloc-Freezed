part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.viewTransactionList() = ViewTransactionList;
}
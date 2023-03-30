part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    required bool isLoading,
    required List<TransactionModel> transactionModelList,
  }) = _TransactionsState;
  factory TransactionsState.initial() {
    return const TransactionsState(
      isLoading: false,
      transactionModelList: [],
    );
  }
}

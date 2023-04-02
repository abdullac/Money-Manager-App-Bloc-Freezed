part of 'transaction_view_bloc.dart';

@freezed
class TransactionViewState with _$TransactionViewState {
  const factory TransactionViewState({
    required Widget? transactionViewPage,
  }) = _TransactionViewState;

  factory TransactionViewState.initial() {
    return const TransactionViewState(transactionViewPage: null);
  }
}

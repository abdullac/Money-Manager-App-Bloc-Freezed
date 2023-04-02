part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const factory AddTransactionState({
    required TransactionType? transactiontype,
    required String? dropDownButtonValue,
    required DateTime? selectedDate,
  }) = _AddTransactionState;
  factory AddTransactionState.initial() {
    return const AddTransactionState(
      transactiontype: null,
      dropDownButtonValue: null,
      selectedDate: null,
    );
  }
}

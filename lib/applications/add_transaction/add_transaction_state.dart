part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const factory AddTransactionState({
    // required String amount,
    required TransactionType? transactiontype,
    required String? dropDownButtonValue,
    required DateTime? selectedDate,
    // required String description,
    // {required Widget? gotoAfterSaveWidget,}
  }) = _AddTransactionState;
  factory AddTransactionState.initial() {
    return const AddTransactionState(
      // gotoAfterSaveWidget: null,
      // amount: "",
      transactiontype: null,
      dropDownButtonValue: null,
      selectedDate: null,
      // description: ""
    );
  }
}

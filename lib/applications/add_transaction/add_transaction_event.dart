part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionEvent with _$AddTransactionEvent {
  const factory AddTransactionEvent.saveTransaction({
    required TransactionModel transactionModel,
  }) = SaveTransaction;

  const factory AddTransactionEvent.radioButtonUiChange({
    required TransactionType? transactionType,
  }) = RadioButtonUiChange;

  const factory AddTransactionEvent.dropDownButtonUiChange({
    required String? dropDownButtonValue,
  }) = DropDownButtonUiChange;

  const factory AddTransactionEvent.selectDateUiChange({
    required DateTime? selectedDate,
  }) = SelectDateUiChange;

  const factory AddTransactionEvent.editItem({
    required TransactionModel transactionModel,
  }) = EditItem;
}

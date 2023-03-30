part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const factory AddTransactionState(
    // {required Widget? gotoAfterSaveWidget,}
    ) = _AddTransactionState;
  factory AddTransactionState.initial() {
    return const AddTransactionState(
      // gotoAfterSaveWidget: null,
    );
  }
}

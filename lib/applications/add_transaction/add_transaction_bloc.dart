import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/add_transaction_repo.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

part 'add_transaction_event.dart';
part 'add_transaction_state.dart';
part 'add_transaction_bloc.freezed.dart';

class AddTransactionBloc
    extends Bloc<AddTransactionEvent, AddTransactionState> {
  AddTransactionBloc() : super(AddTransactionState.initial()) {
    // on<ViewAddTransactionPage>((event, emit) {
    //   emit(state.copyWith(
    //       amount: "",
    //       transactiontype: null,
    //       dropDownButtonValue: null,
    //       selectedDate: null,
    //       description: ""));
    // });

    on<SaveTransaction>((event, emit) {
      // AddTransactionRepo.saveTransaction(event.transactionModel);
      AddTransactionRepo.saveToStorage(event.transactionModel);
      // emit(state.copyWith(
      // gotoAfterSaveWidget: event.gotoAfterSaveWidget
      // ));
    });

    on<RadioButtonUiChange>((event, emit) {
      emit(state.copyWith(
        transactiontype: event.transactionType,
      ));
    });

    on<DropDownButtonUiChange>((event, emit) {
      emit(state.copyWith(dropDownButtonValue: event.dropDownButtonValue));
    });

    on<SelectDateUiChange>((event, emit) {
      emit(state.copyWith(
        selectedDate: event.selectedDate,
      ));
    });

     on<EditItem>((event, emit) async {
      await AddTransactionRepo.editItemFromStorage(transactionModel: event.transactionModel);
    });

  }
}

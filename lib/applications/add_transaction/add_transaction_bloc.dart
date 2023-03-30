import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/add_transaction_repo.dart';

part 'add_transaction_event.dart';
part 'add_transaction_state.dart';
part 'add_transaction_bloc.freezed.dart';

class AddTransactionBloc
    extends Bloc<AddTransactionEvent, AddTransactionState> {
  AddTransactionBloc() : super(AddTransactionState.initial()) {
    on<SaveTransaction>((event, emit) {
      AddTransactionRepo.saveTransaction(event.transactionModel);
      // emit(state.copyWith(
        // gotoAfterSaveWidget: event.gotoAfterSaveWidget
      // ));
    });
  }
}

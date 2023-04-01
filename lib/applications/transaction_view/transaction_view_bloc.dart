import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_view.dart';
import 'package:money_manger_bloc/main.dart';

part 'transaction_view_event.dart';
part 'transaction_view_state.dart';
part 'transaction_view_bloc.freezed.dart';

class TransactionViewBloc
    extends Bloc<TransactionViewEvent, TransactionViewState> {
  TransactionViewBloc() : super(TransactionViewState.initial()) {
    on<TransactionViewPage>((event, emit) {
      emit(state.copyWith(
        transactionViewPage: event.transactionViewPage,
      ));
    });

    on<DeleteItem>((event, emit) async {
      // bool isDelete = transactionModelList.remove(event.transactionModel);
      await TransactionsView.deleteItemFromStorage(transactionModel: event.transactionModel);
      // print("isDelete ");
    });

   

  }
}

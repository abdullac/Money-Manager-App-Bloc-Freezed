import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transaction_view_repo.dart';

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
      await TransactionViewRepo.deleteItemFromStorage(transactionModel: event.transactionModel);
    });

   

  }
}

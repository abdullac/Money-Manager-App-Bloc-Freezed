import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/metheds/main_page/add_transaction_page_widget.dart';
import 'package:money_manger_bloc/domain/metheds/main_page/appbar_leading_widget.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';
part 'main_page_bloc.freezed.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc() : super(MainPageState.initial()) {
    on<ViewMainPage>((event, emit) {
      emit(state.copyWith(
        appBarLeadingWidget: appBarLeadingWidget(event.gotoScreen),
        appBarTitle: event.gotoScreen == Screen.addTransaction
            ? "Add Transaction"
            : event.gotoScreen == Screen.expenseTransactionListByCategory
                ? event.transactionCategoryTitle ?? "*Category"
                : event.gotoScreen == Screen.incomeTransactionListByCategory
                    ? event.transactionCategoryTitle ?? "*Category"
                    : event.gotoScreen == Screen.transactionView
                        ? event.transactionCategoryTitle ?? "*Transaction Item"
                        : event.gotoScreen == Screen.updateTransaction
                            ? "Update Transaction"
                            : "MoneyManager MM",
        actionIconButton: event.gotoScreen == Screen.addTransaction
            ? Icons.save_alt
            : event.gotoScreen == Screen.updateTransaction
                ? Icons.system_update_alt_rounded
                : Icons.add_card,
        goToWidget: event.gotoWidget,
        position: event.gotoScreen == Screen.transactions
            ? 0
            : event.gotoScreen == Screen.incomeCategory ||
                    event.gotoScreen == Screen.expenseCategory ||
                    event.gotoScreen ==
                        Screen.incomeTransactionListByCategory ||
                    event.gotoScreen == Screen.expenseTransactionListByCategory
                ? 1
                : null,
      ));
    });

    on<GotoAddTransactionPage>((event, emit) {
      Widget addTransactionPage = addTransactionPageWidget();
      emit(state.copyWith(
        goToWidget: addTransactionPage,
      ));
    });

    on<GotoPageWidget>((event, emit) {
      emit(state.copyWith(
        goToWidget: event.gotoWidget,
      ));
    });
  }
}

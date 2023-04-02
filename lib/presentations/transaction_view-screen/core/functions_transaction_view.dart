import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transaction_view/transaction_view_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/core/constants_transaction_view.dart';

// setValuesToUpdateTransaction
void setValuesToUpdateTransaction(
  BuildContext context, {
  String amount = "",
  TransactionType? transactionType,
  String? category,
  DateTime? date,
  String description = "",
}) {
  MainPage.viewedScreen = Screen.updateTransaction;
  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.updateTransaction,
      gotoWidget: AddTransactionScreen()));

  AddTransactionScreen.amountEditingController.text = amount;
  AddTransactionScreen.descriptionEditingController.text = description;

  BlocProvider.of<AddTransactionBloc>(context)
      .add(RadioButtonUiChange(transactionType: transactionType));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(DropDownButtonUiChange(dropDownButtonValue: category));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(SelectDateUiChange(selectedDate: date));

  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.updateTransaction,
      gotoWidget: AddTransactionScreen()));

  Navigator.of(context).pop();
}

// deleteTransactionAndAfterUiChanges
void deleteTransactionAndAfterUiChanges(
    BuildContext context, TransactionModel transactionModel) {
  BlocProvider.of<TransactionViewBloc>(context)
      .add(DeleteItem(transactionModel: transactionModel));
  BlocProvider.of<TransactionsBloc>(context).add(const ViewTransactionList());
  BlocProvider.of<CategoryBloc>(context).add(const GoToIncomeCatogoryPage());
  BlocProvider.of<CategoryBloc>(context).add(const GoToExpenseCatogoryPage());
  BlocProvider.of<CategoryBloc>(context)
      .add(CategoryEvent.viewTransactionListByCatogory(
    transactionType: transactionModel.transactionType!,
    category: transactionModel.category!,
  ));
  Navigator.of(context).pop();
}

// updateButtonOnPressed
void updateButtonOnPressed(
    BuildContext context, TransactionModel transactionModel) {
  updateId = transactionModel.transactionId;
  setValuesToUpdateTransaction(
    context,
    amount: transactionModel.amount,
    category: transactionModel.category,
    date: transactionModel.date,
    description: transactionModel.description,
    transactionType: transactionModel.transactionType,
  );
}

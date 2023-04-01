import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transaction_view/transaction_view_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/screen_transaction_view.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

AppBar appBar(BuildContext context, MainPageState state) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          MainPage.viewedScreen = Screen.transactions;
          BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
              gotoScreen: Screen.transactions,
              gotoWidget: ScreenTransactions()));
          BlocProvider.of<TransactionsBloc>(context)
              .add(const ViewTransactionList());
        },
        icon: state.appBarLeadingWidget),
    title: Text(state.appBarTitle),
    actions: [
      IconButton(
        onPressed: () {
          // appBar action Button pressed
          if (MainPage.viewedScreen == Screen.transactions) {
            setValuesToAddTransaction(context);
          } else if (MainPage.viewedScreen == Screen.incomeCategory) {
            setValuesToAddTransaction(context,
                transactionType: TransactionType.income);
          } else if (MainPage.viewedScreen == Screen.expenseCategory) {
            setValuesToAddTransaction(context,
                transactionType: TransactionType.expense);
          } else if (MainPage.viewedScreen ==
              Screen.incomeTransactionListByCategory) {
            BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
                gotoScreen: Screen.addTransaction,
                gotoWidget: AddTransactionScreen()));
          } else if (MainPage.viewedScreen ==
              Screen.expenseTransactionListByCategory) {
            BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
                gotoScreen: Screen.addTransaction,
                gotoWidget: AddTransactionScreen()));
          } else if (MainPage.viewedScreen == Screen.addTransaction) {
            addTransaction(context);
          } else if (MainPage.viewedScreen == Screen.updateTransaction) {
            updateTransaction(context);
          } else if (MainPage.viewedScreen == Screen.transactionView) {
            BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
                gotoScreen: Screen.addTransaction,
                gotoWidget: AddTransactionScreen()));
          } else {
            ///
          }
        },
        icon: Icon(state.actionIconButton),
      )
    ],
  );
}

void setValuesToAddTransaction(
  BuildContext context, {
  String amount = "",
  TransactionType? transactionType,
  String? category,
  DateTime? date,
  String description = "",
}) {
  MainPage.viewedScreen = Screen.addTransaction;
  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.addTransaction, gotoWidget: AddTransactionScreen()));

  AddTransactionScreen.amountEditingController.text = amount;
  AddTransactionScreen.descriptionEditingController.text = description;

  BlocProvider.of<AddTransactionBloc>(context)
      .add(RadioButtonUiChange(transactionType: transactionType));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(DropDownButtonUiChange(dropDownButtonValue: category));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(SelectDateUiChange(selectedDate: date));

  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.addTransaction, gotoWidget: AddTransactionScreen()));
}

void addTransaction(BuildContext context) {
  print("addTransactionWorked");
  int transactionId = AddTransactionScreen.transactionId;
  String amount = AddTransactionScreen.amountEditingController.text;
  TransactionType? transactionType = AddTransactionScreen.radioValue;
  String? category = AddTransactionScreen.dropdownButtonValue;
  DateTime? date = AddTransactionScreen.selectedDate;
  String description = AddTransactionScreen.descriptionEditingController.text;

  if (amount != "" &&
      transactionType != null &&
      category != null &&
      date != null &&
      date.toString() != "Select Date" &&
      description != "") {
    BlocProvider.of<AddTransactionBloc>(context).add(
      SaveTransaction(
        transactionModel: TransactionModel(
          transactionId: transactionId,
          amount: amount,
          transactionType: transactionType,
          category: category,
          date: date,
          description: description,
        ),
      ),
    );
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.transactions,
      gotoWidget: ScreenTransactions(),
    ));
  } else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
      "please give information correctly",
      textAlign: TextAlign.center,
    )));
  }
}

void updateTransaction(BuildContext context) {
  print("updateTransactionWorked");
  // int transactionId = AddTransactionScreen.transactionId;
  int transactionId = updateId;
  String amount = AddTransactionScreen.amountEditingController.text;
  TransactionType? transactionType = AddTransactionScreen.radioValue;
  String? category = AddTransactionScreen.dropdownButtonValue;
  DateTime? date = AddTransactionScreen.selectedDate;
  String description = AddTransactionScreen.descriptionEditingController.text;

  if (amount != "" &&
      transactionType != null &&
      category != null &&
      date != null &&
      date.toString() != "Select Date" &&
      description != "") {
    BlocProvider.of<AddTransactionBloc>(context).add(EditItem(
        transactionModel: TransactionModel(
      transactionId: transactionId,
      amount: amount,
      transactionType: transactionType,
      category: category,
      date: date,
      description: description,
    )));
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.transactions,
      gotoWidget: ScreenTransactions(),
    ));

    MainPage.viewedScreen = Screen.transactions;
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
        gotoScreen: Screen.transactions, gotoWidget: ScreenTransactions()));
    BlocProvider.of<TransactionsBloc>(context).add(const ViewTransactionList());
  } else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
      "please give information correctly",
      textAlign: TextAlign.center,
    )));
  }
}

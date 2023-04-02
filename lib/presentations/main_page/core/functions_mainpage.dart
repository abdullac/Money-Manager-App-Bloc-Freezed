import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/category_screen/screen_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/core/constants_transaction_view.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

/// bottomNavigationBarItemOntap
void bottomNavigationBarItemOntap(int value, BuildContext context) {
  if (value == 0) {
    //  app identify porpose to be which screen shows
    MainPage.viewedScreen = Screen.transactions;
    // call providers for ui change (appbar and bottomNavigationBar)
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.transactions,
      gotoWidget: ScreenTransactions(),
    ));
    // call providers for go to transactions screen
    BlocProvider.of<TransactionsBloc>(context).add(const ViewTransactionList());
  } else {
    //  app identify porpose to be which screen shows
    MainPage.viewedScreen = Screen.incomeCategory;
    // call providers for ui change (appbar and bottomNavigationBar)
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.incomeCategory,
      gotoWidget: ScreenCategory(),
    ));
    // call providers for go to category screen( incom category)
    BlocProvider.of<CategoryBloc>(context).add(const GoToIncomeCatogoryPage());
  }
}

/// addTransaction to storage
void addTransaction(BuildContext context) {
  // get data values when on pressed save button (appbar action) for make TransationModel object
  int transactionId = AddTransactionScreen.transactionId;
  String amount = AddTransactionScreen.amountEditingController.text;
  TransactionType? transactionType = AddTransactionScreen.radioValue;
  String? category = AddTransactionScreen.dropdownButtonValue;
  DateTime? date = AddTransactionScreen.selectedDate;
  String description = AddTransactionScreen.descriptionEditingController.text;

  // if not data values null/empty
  if (amount != "" &&
      transactionType != null &&
      category != null &&
      date != null &&
      date.toString() != "Select Date" &&
      description != "") {
    // bloc provider for save transaction to storage
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
    // bloc provider for goto transactions page after click save button
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.transactions,
      gotoWidget: ScreenTransactions(),
    ));
    // bloc provider for show new transaction list after save
    BlocProvider.of<TransactionsBloc>(context).add(const ViewTransactionList());
  } else {
    // snackbar shows if data values null/empty
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
      "please give information correctly",
      textAlign: TextAlign.center,
    )));
  }
}

/// updateTransaction to storage
void updateTransaction(BuildContext context) {
  // get data values when on pressed update button (appbar action) for make TransationModel object
  int transactionId = updateId;
  String amount = AddTransactionScreen.amountEditingController.text;
  TransactionType? transactionType = AddTransactionScreen.radioValue;
  String? category = AddTransactionScreen.dropdownButtonValue;
  DateTime? date = AddTransactionScreen.selectedDate;
  String description = AddTransactionScreen.descriptionEditingController.text;

  // if not data values null/empty
  if (amount != "" &&
      transactionType != null &&
      category != null &&
      date != null &&
      date.toString() != "Select Date" &&
      description != "") {
    // bloc provider for update transaction to storage
    BlocProvider.of<AddTransactionBloc>(context).add(EditItem(
        transactionModel: TransactionModel(
      transactionId: transactionId,
      amount: amount,
      transactionType: transactionType,
      category: category,
      date: date,
      description: description,
    )));
    // to be showed screen
    MainPage.viewedScreen = Screen.transactions;

    // bloc provider for goto transactions page after click update button
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.transactions,
      gotoWidget: ScreenTransactions(),
    ));
    // bloc provider for show new transaction list after update
    BlocProvider.of<TransactionsBloc>(context).add(const ViewTransactionList());
  } else {
    // snackbar shows if data values null/empty
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
      "please give information correctly",
      textAlign: TextAlign.center,
    )));
  }
}

/// setValuesTo AddTransaction page
void setValuesToAddTransaction(
  BuildContext context, {
  String amount = "",
  TransactionType? transactionType,
  String? category,
  DateTime? date,
  String description = "",
}) {
  // to be showed screen
  MainPage.viewedScreen = Screen.addTransaction;
  // bloc provider for show main page ( appBar bottomnavigationbar) as add transaction page
  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.addTransaction, gotoWidget: AddTransactionScreen()));
  // set values to add transaction page amount and desription editing field
  AddTransactionScreen.amountEditingController.text = amount;
  AddTransactionScreen.descriptionEditingController.text = description;

  // bloc provider for set values radio , dropdown & calender button and after their ui change
  BlocProvider.of<AddTransactionBloc>(context)
      .add(RadioButtonUiChange(transactionType: transactionType));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(DropDownButtonUiChange(dropDownButtonValue: category));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(SelectDateUiChange(selectedDate: date));
  // bloc provider for goto add transsaction page
  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.addTransaction, gotoWidget: AddTransactionScreen()));
}

// do deferend funtionalities when appbar action button pressed
void appBarActionButtonPressed(BuildContext context) {
  if (MainPage.viewedScreen == Screen.transactions ||
      MainPage.viewedScreen == Screen.incomeCategory ||
      MainPage.viewedScreen == Screen.expenseCategory) {
    setValuesToAddTransaction(context);
  } else if (MainPage.viewedScreen == Screen.incomeTransactionListByCategory ||
      MainPage.viewedScreen == Screen.transactionView ||
      MainPage.viewedScreen == Screen.expenseTransactionListByCategory) {
    BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
        gotoScreen: Screen.addTransaction, gotoWidget: AddTransactionScreen()));
  } else if (MainPage.viewedScreen == Screen.addTransaction) {
    addTransaction(context);
  } else if (MainPage.viewedScreen == Screen.updateTransaction) {
    updateTransaction(context);
  } else {
    ///
  }
}

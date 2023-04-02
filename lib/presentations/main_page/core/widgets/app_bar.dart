import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/main_page/core/functions_mainpage.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

AppBar appBar(BuildContext context, MainPageState state) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          MainPage.viewedScreen = Screen.transactions;
          // bloc provider for mainpage ui (appBar,bottomNavigationBar) as transactions page
          BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
              gotoScreen: Screen.transactions,
              gotoWidget: ScreenTransactions()));
          // bloc provider for list transations in transations page
          BlocProvider.of<TransactionsBloc>(context)
              .add(const ViewTransactionList());
        },
        icon: state.appBarLeadingWidget),
    title: Text(state.appBarTitle),
    actions: [
      IconButton(
        onPressed: () {
          // appBar action Button pressed
          appBarActionButtonPressed(context);
        },
        icon: Icon(state.actionIconButton),
      )
    ],
  );
}

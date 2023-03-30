import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

StatelessWidget appBarLeadingWidget(Screen gotoScreen) {
  return gotoScreen == Screen.transactions ||
          gotoScreen == Screen.incomeCategory ||
          gotoScreen == Screen.expenseCategory
      ? Icon(Icons.home)
      : Icon(Icons.arrow_back);
}

import 'package:flutter/material.dart';
import 'package:money_manger_bloc/core/constants.dart';

StatelessWidget appBarLeadingWidget(Screen gotoScreen) {
  return gotoScreen == Screen.transactions ||
          gotoScreen == Screen.incomeCategory ||
          gotoScreen == Screen.expenseCategory
      ? const Icon(Icons.home)
      : const Icon(Icons.arrow_back);
}

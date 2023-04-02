 import 'package:flutter/material.dart';

// transaction type
enum TransactionType {
  income,
  expense,
}

// shown/to be shown screen/page
enum Screen {
  transactions,
  category,
  incomeCategory,
  expenseCategory,
  incomeTransactionListByCategory,
  expenseTransactionListByCategory,
  addTransaction,
  updateTransaction,
  transactionView,
}

// list tile decoration and shadow
var listTileDeorationAndShadows = BoxDecoration(
  color: Colors.blue[200],
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(1, 1),
      blurRadius: 2,
      spreadRadius: 2,
    )
  ],
);




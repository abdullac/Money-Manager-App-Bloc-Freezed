


import 'package:flutter/material.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

class ScreenCategoryTransactionList extends StatelessWidget {
const ScreenCategoryTransactionList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TransactionListView(isTransactionScreen: false, transactionType: TransactionType.expense);
  }
}
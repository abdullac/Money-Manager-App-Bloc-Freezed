import 'package:flutter/material.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/screen_transaction_view.dart';

Future<dynamic> transactionListByCategoryOnTap(
    BuildContext context, TransactionModel transactionModel) {
  return Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ScreenTransactionView(
      transactionModel: transactionModel,
    ),
  ));
}



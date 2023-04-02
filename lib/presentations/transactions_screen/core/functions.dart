import 'package:flutter/material.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/screen_transaction_view.dart';

void screenTransactionsListTileOnTap(
    BuildContext context, TransactionModel transactionModel) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ScreenTransactionView(
      transactionModel: transactionModel,
    ),
  ));
}

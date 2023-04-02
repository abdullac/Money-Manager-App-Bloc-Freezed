import 'package:flutter/material.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/core/functions_transaction_view.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/core/widgets.dart/update_delete_button.dart';


class ScreenTransactionView extends StatelessWidget {
  final TransactionModel transactionModel;
  const ScreenTransactionView({
    Key? key,
    required this.transactionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.transactionView;

    WidgetsBinding.instance.addPostFrameCallback((_) {});

    return Scaffold(
      appBar: AppBar(
        title: Text(transactionModel.category!),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// shows transaction details
              Text(transactionModel.amount),
              Text(transactionModel.date.toString()),
              Text(transactionModel.transactionType.toString()),
              Text(transactionModel.description),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// transaction delete and edit buttons
                  UpdateOrDeleteButton(
                      transactionModel: transactionModel,
                      buttonOnPressed: deleteTransactionAndAfterUiChanges,
                      buttonText: "Delete"),
                  UpdateOrDeleteButton(
                      buttonOnPressed: updateButtonOnPressed,
                      transactionModel: transactionModel,
                      buttonText: "Edit"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

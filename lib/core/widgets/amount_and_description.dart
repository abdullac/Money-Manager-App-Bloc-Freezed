import 'package:flutter/material.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

class AmountAndDescription extends StatelessWidget {
  const AmountAndDescription({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MainPage.viewedScreen == Screen.transactions
                ? transactionModel.amount
                : "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            transactionModel.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black38),
          )
        ],
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';

class TransactionTypeIcon extends StatelessWidget {
  const TransactionTypeIcon({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          transactionModel.transactionType == TransactionType.income
              ? Icon(
                  Icons.arrow_downward,
                  color: Colors.green[500],
                )
              : Icon(
                  Icons.arrow_upward,
                  color: Colors.red[300],
                ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}

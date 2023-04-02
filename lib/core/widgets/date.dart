import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      child: Center(
        child: Text(
          (DateFormat("dd\nMMM\nyyyy")
              .format(transactionModel.date ?? DateTime.now())),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';

class Description extends StatelessWidget {
  const Description({
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


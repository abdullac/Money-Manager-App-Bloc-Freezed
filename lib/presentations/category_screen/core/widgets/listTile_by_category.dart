import 'package:flutter/material.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/core/widgets/date.dart';
import 'package:money_manger_bloc/core/widgets/transaction_type_icon.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/category_screen/core/functions_category.dart';
import 'package:money_manger_bloc/presentations/category_screen/core/widgets/description.dart';

class ListTileByCategory extends StatelessWidget {
  const ListTileByCategory({
    super.key,
    required this.transactionModel,
    required this.amountTitle,
  });

  final TransactionModel transactionModel;
  final Text amountTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: listTileDeorationAndShadows,
      child: ListTile(
        onTap: () {
          // list tile on tap
          transactionListByCategoryOnTap(context, transactionModel);
        },
        leading: DateWidget(transactionModel: transactionModel),
        title: amountTitle,
        subtitle: Description(transactionModel: transactionModel),
        trailing: TransactionTypeIcon(transactionModel: transactionModel),
      ),
    );
  }
}

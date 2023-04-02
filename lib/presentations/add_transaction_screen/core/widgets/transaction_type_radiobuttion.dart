import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';

class TransactionTypeRadioButtons extends StatelessWidget {
  const TransactionTypeRadioButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionBloc, AddTransactionState>(
      builder: (context, state) {
        AddTransactionScreen.radioValue = state.transactiontype;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            radioButtonAndTitle(
              context,
              transactionType: TransactionType.income,
              radioTitle: "Income",
            ),
            radioButtonAndTitle(context,
                transactionType: TransactionType.expense,
                radioTitle: "Expense"),
          ],
        );
      },
    );
  }
}

Widget radioButtonAndTitle(
  BuildContext context, {
  required TransactionType transactionType,
  required String radioTitle,
}) {
  return Row(
    children: [
      Radio(
        value: transactionType,
        groupValue: AddTransactionScreen.radioValue,
        onChanged: (selectedTransactionType) {
          //
          BlocProvider.of<AddTransactionBloc>(context).add(RadioButtonUiChange(
            transactionType: selectedTransactionType,
          ));
        },
      ),
      Text(radioTitle)
    ],
  );
}

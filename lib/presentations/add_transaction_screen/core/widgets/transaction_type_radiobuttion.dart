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
          children: const [
            RadioButtonAndTitle(
                transactionType: TransactionType.income, radioTitle: "Income"),
            RadioButtonAndTitle(
                transactionType: TransactionType.expense,
                radioTitle: "Expense"),
          ],
        );
      },
    );
  }
}

class RadioButtonAndTitle extends StatelessWidget {
  final TransactionType transactionType;
  final String radioTitle;
  const RadioButtonAndTitle({
    super.key,
    required this.transactionType,
    required this.radioTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: transactionType,
          groupValue: AddTransactionScreen.radioValue,
          onChanged: (selectedTransactionType) {
            //
            BlocProvider.of<AddTransactionBloc>(context)
                .add(RadioButtonUiChange(
              transactionType: selectedTransactionType,
            ));
          },
        ),
        Text(radioTitle)
      ],
    );
  }
}

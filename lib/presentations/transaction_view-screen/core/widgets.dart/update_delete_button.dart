import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/transaction_view/transaction_view_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';

class UpdateOrDeleteButton extends StatelessWidget {
  final void Function(BuildContext, TransactionModel) buttonOnPressed;
  final TransactionModel transactionModel;
  final String buttonText;
  const UpdateOrDeleteButton({
    super.key,
    required this.transactionModel,
    required this.buttonOnPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    // bloc provider and builder for create context
    return BlocProvider(
      create: (context) => TransactionViewBloc(),
      child: Builder(builder: (context) {
        return ElevatedButton.icon(
          onPressed: () {
            // button on pressed for addTransaction page to be updated date
            // updateButtonOnPressed(context,transactionModel);
            buttonOnPressed(context, transactionModel);
          },
          icon: const Icon(Icons.edit),
          label: Text(buttonText),
        );
      }),
    );
  }
}

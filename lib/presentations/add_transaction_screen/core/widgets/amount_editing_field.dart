import 'package:flutter/material.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';

class AmountEditingField extends StatelessWidget {
  const AmountEditingField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: AddTransactionScreen.amountEditingController,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        hintText: "Amount",
        border: OutlineInputBorder(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';

class DescriptionEditingField extends StatelessWidget {
  const DescriptionEditingField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        child: TextField(
          controller: AddTransactionScreen.descriptionEditingController,
          maxLines: 2,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Description",
          ),
        ),
      ),
    );
  }
}


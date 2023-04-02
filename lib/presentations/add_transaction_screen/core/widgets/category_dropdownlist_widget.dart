import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/functions_add_transaction.dart';

class CategoryDropdownListButton extends StatelessWidget {
  const CategoryDropdownListButton({
    super.key,
  });

  static List<TransactionModel> tempTransactionModelList = [];
  static Set<String> listOfCategoryItems = {
    "Add New Category",
  };

  @override
  Widget build(BuildContext context) {
    // bloc builder for show add transaction page
    return BlocBuilder<AddTransactionBloc, AddTransactionState>(
      builder: (context, state) {
        AddTransactionScreen.dropdownButtonValue = state.dropDownButtonValue;
        return DropdownButton(
          value: AddTransactionScreen.dropdownButtonValue,
          hint: const Text("Select Category"),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          items: dropdownMenuItemList(context),
          onChanged: (dropdownitemSeclectedValue) {
            // drop down on changed
            if (dropdownitemSeclectedValue == "Add New Category") {
              ///
              showDialog(
                  context: context,
                  builder: (context) => showAlertDialog(context));
            }
          },
        );
      },
    );
  }
}

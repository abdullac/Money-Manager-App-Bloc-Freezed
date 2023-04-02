import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/category_dropdownlist_widget.dart';

Widget showAlertDialog(
  BuildContext context,
) {
  return AlertDialog(
    title: const Text("Add new Category"),
    content: TextField(
      controller: alertDialogTextFieldController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    ),
    actions: [
      ElevatedButton(
        onPressed: () {
          // alert Dialog button pressed
          CategoryDropdownListButton.listOfCategoryItems
              .add(alertDialogTextFieldController.text);
          BlocProvider.of<AddTransactionBloc>(context).add(
              DropDownButtonUiChange(
                  dropDownButtonValue: alertDialogTextFieldController.text));

          Navigator.of(context).pop();
        },
        child: const Text("Ok"),
      )
    ],
  );
}

Future<void> calenderIconOnPressed(BuildContext context) async {
  // bloc provider for calender Date text ui change
  BlocProvider.of<AddTransactionBloc>(context).add(SelectDateUiChange(
      selectedDate: await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000, 1, 1),
    lastDate: DateTime.now(),
  )));
}

Set<String> categoryItems() {
  TransactionType? transactionType = AddTransactionScreen.radioValue;

  CategoryDropdownListButton.tempTransactionModelList.forEach((element) {
    if (element.transactionType == transactionType &&
        element.category != null) {
      CategoryDropdownListButton.listOfCategoryItems.add(element.category!);
    }
  });
  return CategoryDropdownListButton.listOfCategoryItems;
}

List<DropdownMenuItem> dropdownMenuItemList(BuildContext context) {
  List<DropdownMenuItem> listOfDropdownMenuItem = [];
  categoryItems().forEach((element) {
    listOfDropdownMenuItem.add(DropdownMenuItem(
      value: element,
      child: Text(element),
      onTap: () {
        // bloc provider for change dropdownListButton ui when add each element from categoryItems()
        BlocProvider.of<AddTransactionBloc>(context)
            .add(DropDownButtonUiChange(dropDownButtonValue: element));
      },
    ));
  });
  return listOfDropdownMenuItem;
}

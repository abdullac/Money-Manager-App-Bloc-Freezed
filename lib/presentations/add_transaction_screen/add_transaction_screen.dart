import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

// late int transactionId;

class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({Key? key}) : super(key: key);
  static int transactionId = DateTime.now().microsecondsSinceEpoch;
  static TextEditingController amountEditingController =
      TextEditingController();
  static TextEditingController descriptionEditingController =
      TextEditingController();
  static TransactionType? radioValue;
  static String? dropdownButtonValue;
  static DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MainPageBloc>(context)
          .add(const ChangeAppBarTitle(appBarTitle: "Add Transaction"));
      BlocProvider.of<MainPageBloc>(context).add(const ChangeActionButton(
          appbarActionButton: AppbarActionButton.save));
      BlocProvider.of<MainPageBloc>(context)
          .add(const ViewAppbarBackButton(isViewGoBackButton: true));
    });
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AmountEditingField(),
            TransactionTypeRadioButtons(),
            CategoryDropdownListButton(),
            const SelectDateCalender(),
            DescriptionTextWidget(),
          ],
        ),
      ),
    );
  }
}

class AmountEditingField extends StatelessWidget {
  AmountEditingField({
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

class TransactionTypeRadioButtons extends StatelessWidget {
  TransactionTypeRadioButtons({
    super.key,
  });

  ValueNotifier vN = ValueNotifier("hhggh");

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = ViewedScreen.addTransaction;
    return ValueListenableBuilder(
        valueListenable: vN,
        builder: (context, newValue, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Radio(
                    value: TransactionType.income,
                    groupValue: AddTransactionScreen.radioValue,
                    onChanged: (selectedTransactionType) {
                      //
                      AddTransactionScreen.radioValue = selectedTransactionType;
                      vN.notifyListeners();
                    },
                  ),
                  const Text("Income")
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: TransactionType.expense,
                    groupValue: AddTransactionScreen.radioValue,
                    onChanged: (selectedTransactionType) {
                      //
                      AddTransactionScreen.radioValue = selectedTransactionType;
                      vN.notifyListeners();
                    },
                  ),
                  const Text("Expense")
                ],
              ),
            ],
          );
        });
  }
}

class CategoryDropdownListButton extends StatelessWidget {
  CategoryDropdownListButton({
    super.key,
  });

  ValueNotifier vN = ValueNotifier("ddd");

  String addNewCategory = "Add New Category";
  String mango = "mango";
  String apple = "apple";

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: vN,
        builder: (context, newValue, _) {
          return DropdownButton(
            value: AddTransactionScreen.dropdownButtonValue,
            hint: const Text("Select Category"),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            items: [
              DropdownMenuItem(
                value: addNewCategory,
                child: const Text("Add New Category"),
                onTap: () {
                  AddTransactionScreen.dropdownButtonValue = addNewCategory;
                  vN.notifyListeners();
                },
              ),
              DropdownMenuItem(
                value: mango,
                child: const Text("Mango"),
                onTap: () {
                  AddTransactionScreen.dropdownButtonValue = mango;
                  vN.notifyListeners();
                },
              ),
              DropdownMenuItem(
                value: apple,
                child: const Text("Apple"),
                onTap: () {
                  AddTransactionScreen.dropdownButtonValue = apple;
                  vN.notifyListeners();
                },
              ),
            ],
            onChanged: (dropdownitemSeclectedValue) {
              // drop down on changed
            },
          );
        });
  }
}

class SelectDateCalender extends StatelessWidget {
  const SelectDateCalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // calender icon on pressed
        AddTransactionScreen.selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000, 1, 1),
          lastDate: DateTime.now(),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.edit_calendar),
          Text(
            AddTransactionScreen.selectedDate == null
                ? "Select Date"
                : (DateFormat("dd-MM-yyyy").format(
                        AddTransactionScreen.selectedDate ?? DateTime.now()))
                    .toString(),
          ),
        ],
      ),
    );
  }
}

class DescriptionTextWidget extends StatelessWidget {
  DescriptionTextWidget({
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

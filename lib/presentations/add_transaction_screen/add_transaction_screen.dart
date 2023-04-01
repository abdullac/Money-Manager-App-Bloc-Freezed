import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_repo.dart';
import 'package:money_manger_bloc/main.dart';
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
    MainPage.viewedScreen = MainPage.viewedScreen == Screen.updateTransaction
        ? Screen.updateTransaction
        : Screen.addTransaction;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<AddTransactionBloc>(context)
      //     .add(const ViewAddTransactionPage());
      // BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      //     gotoScreen: Screen.addTransaction,
      //     gotoWidget: AddTransactionScreen()));
      // BlocProvider.of<MainPageBloc>(context)
      //     .add(const ChangeAppBarTitle(appBarTitle: "Add Transaction"));
      // BlocProvider.of<MainPageBloc>(context).add(const ChangeActionButton(
      //     appbarActionButton: AppbarActionButton.save));
      // BlocProvider.of<MainPageBloc>(context)
      //     .add(const ViewAppbarBackButton(isViewGoBackButton: true));
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

  @override
  Widget build(BuildContext context) {
    // MainPage.viewedScreen = Screen.addTransaction;
    return BlocBuilder<AddTransactionBloc, AddTransactionState>(
      builder: (context, state) {
        AddTransactionScreen.radioValue = state.transactiontype;
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
                    BlocProvider.of<AddTransactionBloc>(context)
                        .add(RadioButtonUiChange(
                      transactionType: selectedTransactionType,
                    ));
                    // AddTransactionScreen.radioValue = selectedTransactionType;
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
                    BlocProvider.of<AddTransactionBloc>(context)
                        .add(RadioButtonUiChange(
                      transactionType: selectedTransactionType,
                    ));
                    // AddTransactionScreen.radioValue = selectedTransactionType;
                  },
                ),
                const Text("Expense")
              ],
            ),
          ],
        );
      },
    );
  }
}

class CategoryDropdownListButton extends StatelessWidget {
  CategoryDropdownListButton({
    super.key,
  });

  // ValueNotifier vN = ValueNotifier("ddd");

  // String addNewCategory = "Add New Category";
  // String mango = "mango";
  // String apple = "apple";

  static List<TransactionModel> tempTransactionModelList = [];

  Set<String> categoryItems() {
    TransactionType? transactionType = AddTransactionScreen.radioValue;
    Set<String> listOfCategoryItems = {
      "Add New Category",
      "mango",
      "apple",
    };
    // final transactionModelList = await TransactionsRepo.getAllFromStorage();

    tempTransactionModelList.forEach((element) {
      if (element.transactionType == transactionType &&
          element.category != null) {
        listOfCategoryItems.add(element.category!);
      }
    });
    return listOfCategoryItems;
  }

  // List<String> dropDownButtonItems = [
  //   "Add New Category",
  //   "mango",
  //   "apple",
  // ];

  List<DropdownMenuItem> dropdownMenuItemList(BuildContext context) {
    List<DropdownMenuItem> listOfDropdownMenuItem = [];
    // dropDownButtonIgtems.forEach((element) {
    Set<String> strinSet = categoryItems();
    strinSet.forEach((element) {
      listOfDropdownMenuItem.add(DropdownMenuItem(
        value: element,
        child: Text(element),
        onTap: () {
          BlocProvider.of<AddTransactionBloc>(context)
              .add(DropDownButtonUiChange(dropDownButtonValue: element));
        },
      ));
    });
    return listOfDropdownMenuItem;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionBloc, AddTransactionState>(
      builder: (context, state) {
        AddTransactionScreen.dropdownButtonValue = state.dropDownButtonValue;
        List<DropdownMenuItem> dropdownMenuItemList2 = [];
        // WidgetsBinding.instance.addPostFrameCallback((_) {
        dropdownMenuItemList2 = dropdownMenuItemList(context);
        print("dropdownMenuItemList2 $dropdownMenuItemList2");
        // });
        return DropdownButton(
          value: AddTransactionScreen.dropdownButtonValue,
          hint: const Text("Select Category"),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          items: dropdownMenuItemList(context),

          //  [
          //   DropdownMenuItem(
          //     value: dropDownButtonItems[0],
          //     child: const Text("Add New Category"),
          //     onTap: () {
          //       BlocProvider.of<AddTransactionBloc>(context).add(
          //           DropDownButtonUiChange(
          //               dropDownButtonValue: dropDownButtonItems[0]));
          //       // AddTransactionScreen.dropdownButtonValue = addNewCategory;
          //       // vN.notifyListeners();
          //     },
          //   ),
          //   DropdownMenuItem(
          //     value: dropDownButtonItems[1],
          //     child: const Text("Mango"),
          //     onTap: () {
          //       BlocProvider.of<AddTransactionBloc>(context).add(
          //           DropDownButtonUiChange(
          //               dropDownButtonValue: dropDownButtonItems[1]));
          //       // vN.notifyListeners();
          //     },
          //   ),
          //   DropdownMenuItem(
          //     value: dropDownButtonItems[2],
          //     child: const Text("Apple"),
          //     onTap: () {
          //       BlocProvider.of<AddTransactionBloc>(context).add(
          //           DropDownButtonUiChange(
          //               dropDownButtonValue: dropDownButtonItems[2]));
          //       // vN.notifyListeners();
          //     },
          //   ),
          // ],
          onChanged: (dropdownitemSeclectedValue) {
            // drop down on changed\
            if (dropdownitemSeclectedValue == "Add New Category") {
              ///
              print(dropdownitemSeclectedValue);
              // showInSnackBar(context);

              showDialog(
                  context: context, builder: (context) => showAlertDialog());
            }
          },
        );
      },
    );
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
        BlocProvider.of<AddTransactionBloc>(context).add(SelectDateUiChange(
            selectedDate: await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000, 1, 1),
          lastDate: DateTime.now(),
        )));
        // AddTransactionScreen.selectedDate = await showDatePicker(
        //   context: context,
        //   initialDate: DateTime.now(),
        //   firstDate: DateTime(2000, 1, 1),
        //   lastDate: DateTime.now(),
        // );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.edit_calendar),
          BlocBuilder<AddTransactionBloc, AddTransactionState>(
            builder: (context, state) {
              AddTransactionScreen.selectedDate = state.selectedDate;
              return Text(
                AddTransactionScreen.selectedDate == null
                    ? "Select Date"
                    : (DateFormat("dd-MMM-yyyy").format(
                        AddTransactionScreen.selectedDate ?? DateTime.now())),
              );
            },
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

void showInSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("value"),
      action: SnackBarAction(
        label: 'Dissmiss',
        textColor: Colors.yellow,
        onPressed: () {
          //  Navigator.of(context).pop();
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
      duration: const Duration(minutes: 5)));
}

Widget showAlertDialog() {
  return AlertDialog(
    title: const Text("Add new Category"),
    content: const Center(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    ),
    actions: [
      ElevatedButton(
        onPressed: () {
          // alert Dialog button pressed
        },
        child: const Text("Ok"),
      )
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transaction_view/transaction_view_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

int updateId = 0;

class ScreenTransactionView extends StatelessWidget {
  final TransactionModel transactionModel;
  const ScreenTransactionView({
    Key? key,
    required this.transactionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.transactionView;

    WidgetsBinding.instance.addPostFrameCallback((_) {});

    return Scaffold(
      appBar: AppBar(
        title: Text(transactionModel.category!),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(transactionModel.amount),
              Text(transactionModel.date.toString()),
              // Text(transactionModel.category ?? "*Category not provided"),
              Text(transactionModel.transactionType.toString()),
              Text(transactionModel.description),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocProvider(
                    create: (_) => TransactionViewBloc(),
                    child: Builder(
                      builder: (context) {
                        return ElevatedButton.icon(
                          onPressed: () {
                            // delete this transaction button
                            BlocProvider.of<TransactionViewBloc>(context).add(
                                DeleteItem(transactionModel: transactionModel));
                            BlocProvider.of<TransactionsBloc>(context)
                                .add(const ViewTransactionList());
                            BlocProvider.of<CategoryBloc>(context)
                                .add(const GoToIncomeCatogoryPage());
                            BlocProvider.of<CategoryBloc>(context)
                                .add(const GoToExpenseCatogoryPage());
                            BlocProvider.of<CategoryBloc>(context).add(
                                CategoryEvent.viewTransactionListByCatogory(
                              transactionType:
                                  transactionModel.transactionType!,
                              category: transactionModel.category!,
                            ));
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.delete),
                          label: const Text("Delete"),
                        );
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (context) => TransactionViewBloc(),
                    child: Builder(builder: (context) {
                      return ElevatedButton.icon(
                        onPressed: () {
                          // update this transaction button

                          // BlocProvider.of<AddTransactionBloc>(context).add(
                          //     AddTransactionEvent.saveTransaction(
                          //         transactionModel: transactionModel));
                          updateId = transactionModel.transactionId;
                          setValuesToUpdateTransaction(
                            context,
                            amount: transactionModel.amount,
                            category: transactionModel.category,
                            date: transactionModel.date,
                            description: transactionModel.description,
                            transactionType: transactionModel.transactionType,
                          );

                          // BlocProvider.of<TransactionViewBloc>(context).add(
                          //     EditItem(transactionModel: transactionModel));
                          // BlocProvider.of<TransactionsBloc>(context)
                          //     .add(const ViewTransactionList());
                          // BlocProvider.of<CategoryBloc>(context)
                          //     .add(const GoToIncomeCatogoryPage());
                          // BlocProvider.of<CategoryBloc>(context)
                          //     .add(const GoToExpenseCatogoryPage());
                          // BlocProvider.of<CategoryBloc>(context)
                          //     .add(CategoryEvent.viewTransactionListByCatogory(
                          //   transactionType: transactionModel.transactionType!,
                          //   category: transactionModel.category!,
                          // ));
                          // Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.edit),
                        label: const Text("Edit"),
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void setValuesToUpdateTransaction(
  BuildContext context, {
  String amount = "",
  TransactionType? transactionType,
  String? category,
  DateTime? date,
  String description = "",
}) {
  MainPage.viewedScreen = Screen.updateTransaction;
  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.updateTransaction,
      gotoWidget: AddTransactionScreen()));

  AddTransactionScreen.amountEditingController.text = amount;
  AddTransactionScreen.descriptionEditingController.text = description;

  BlocProvider.of<AddTransactionBloc>(context)
      .add(RadioButtonUiChange(transactionType: transactionType));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(DropDownButtonUiChange(dropDownButtonValue: category));
  BlocProvider.of<AddTransactionBloc>(context)
      .add(SelectDateUiChange(selectedDate: date));

  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
      gotoScreen: Screen.updateTransaction,
      gotoWidget: AddTransactionScreen()));
      
  Navigator.of(context).pop();
}

// void updateTransaction(BuildContext context) {
//   print("updateTransactionWorked");
//   // int transactionId = AddTransactionScreen.transactionId;
//   int transactionId = updateId;
//   String amount = AddTransactionScreen.amountEditingController.text;
//   TransactionType? transactionType = AddTransactionScreen.radioValue;
//   String? category = AddTransactionScreen.dropdownButtonValue;
//   DateTime? date = AddTransactionScreen.selectedDate;
//   String description = AddTransactionScreen.descriptionEditingController.text;

//   if (amount != "" &&
//       transactionType != null &&
//       category != null &&
//       date != null &&
//       date.toString() != "Select Date" &&
//       description != "") {

//    BlocProvider.of<TransactionViewBloc>(context).add(
//     EditItem(transactionModel: TransactionModel(
//           transactionId: transactionId,
//           amount: amount,
//           transactionType: transactionType,
//           category: category,
//           date: date,
//           description: description,
//         )));
//     BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
//       gotoScreen: Screen.transactions,
//       gotoWidget: ScreenTransactions(),
//     ));
//   } else {
//     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text(
//       "please give information correctly",
//       textAlign: TextAlign.center,
//     )));
//   }
// }

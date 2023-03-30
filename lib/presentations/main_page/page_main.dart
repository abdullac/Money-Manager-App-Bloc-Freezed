import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/category_screen/screen_category.dart';
import 'package:money_manger_bloc/presentations/category_transaction_list_screen/screen_category_transaction_list.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/screen_transaction_view.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

// enum ViewedScreen {
//   transactions,
//   incomeCategory,
//   expenseCategory,
//   incomeTransactionList,
//   expenseTransactionList,
//   addTransaction,
//   updateTransaction,
//   transactionView,
// }

enum Screen {
  transactions,
  category,
  incomeCategory,
  expenseCategory,
  incomeTransactionList,
  expenseTransactionList,
  addTransaction,
  updateTransaction,
  transactionView,
}

enum AppbarActionButton {
  add,
  save,
  update,
}

// int selectedIndex = 0;

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  static Screen viewedScreen = Screen.transactions;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<MainPageBloc>(context)
      //     .add(const ChangeAppBarTitle(appBarTitle: "Money Manager App M"));
      // BlocProvider.of<MainPageBloc>(context).add(
      //     const ChangeActionButton(appbarActionButton: AppbarActionButton.add));
    });
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  // back button
                  // BlocProvider.of<MainPageBloc>(context).add(
                  //     const GotoBack(gotoBackWidget: ScreenTransactions()));
                  BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
                      gotoScreen: Screen.transactions,
                      gotoWidget: ScreenTransactions()));
                },
                icon: state.appBarLeadingWidget),
            title: Text(state.appBarTitle),
            actions: [
              IconButton(
                onPressed: () {
                  // appBar action Button pressed
                  if (viewedScreen == Screen.transactions) {
                    // BlocProvider.of<MainPageBloc>(context)
                    //     .add(const GotoAddTransactionPage());
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  } else if (viewedScreen == Screen.category) {
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  }  else if (viewedScreen == Screen.incomeCategory) {
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  } else if (viewedScreen == Screen.expenseCategory) {
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  } else if (viewedScreen == Screen.incomeTransactionList) {
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  } else if (viewedScreen == Screen.expenseTransactionList) {
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  } else if (viewedScreen == Screen.addTransaction) {
                    addTransaction(context);
                  } else if (viewedScreen == Screen.updateTransaction) {
                  } else if (viewedScreen == Screen.transactionView) {
                    BlocProvider.of<MainPageBloc>(context).add(
                        const ViewMainPage(
                            gotoScreen: Screen.addTransaction,
                            gotoWidget: AddTransactionScreen()));
                  } else {
                    ///
                  }
                },
                icon: Icon(state.actionIconButton),
              )
            ],
          ),
          body: state.goToWidget
          //  ??
          //     SafeArea(
          //       child: state.position == 0
          //           ? const ScreenTransactions()
          //           : const ScreenCategory(),
          //       // ScreenCategoryTransactionList(),
          //       // ScreenTransactionView(),
          //       // AddTransactionScreen(),
          //     )
          ,
          bottomNavigationBar: state.position == null
              ? const SizedBox()
              : BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                      icon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Icon(Icons.arrow_downward),
                          Icon(Icons.arrow_upward),
                        ],
                      ),
                      label: "Transactions",
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.category),
                      label: "Category",
                    ),
                  ],
                  onTap: (value) {
                    //
                    value == 0
                        ? BlocProvider.of<MainPageBloc>(context)
                            .add(const ViewMainPage(
                            gotoScreen: Screen.transactions,
                            gotoWidget: ScreenTransactions(),
                          ))
                        : BlocProvider.of<MainPageBloc>(context)
                            .add(const ViewMainPage(
                            gotoScreen: Screen.incomeCategory,
                            gotoWidget: ScreenCategory(),
                          ));
                  },
                  // currentIndex: selectedIndex,
                  currentIndex: state.position!,
                ),
        );
      },
    );
  }

  void addTransaction(BuildContext context) {
    int transactionId = AddTransactionScreen.transactionId;
    String amount = AddTransactionScreen.amountEditingController.text;
    TransactionType? transactionType = AddTransactionScreen.radioValue;
    String? category = AddTransactionScreen.dropdownButtonValue;
    DateTime? date = AddTransactionScreen.selectedDate;
    String description = AddTransactionScreen.descriptionEditingController.text;

    if (amount != "" &&
        transactionType != null &&
        category != null &&
        date != null &&
        date.toString() != "Select Date" &&
        description != "") {
      BlocProvider.of<AddTransactionBloc>(context).add(
        SaveTransaction(
          transactionModel: TransactionModel(
            transactionId: transactionId,
            amount: amount,
            transactionType: transactionType,
            category: category,
            date: date,
            description: description,
          ),
          // gotoAfterSaveWidget: const ScreenTransactions(),
        ),
      );
      // BlocProvider.of<MainPageBloc>(context)
      //     .add(const GotoPageWidget(gotoWidget: ScreenTransactions()));
      // BlocProvider.of<MainPageBloc>(context)
      //     .add(const ChangeAppBarTitle(appBarTitle: "Money Manager App M"));
      // BlocProvider.of<MainPageBloc>(context).add(
      //     const ChangeActionButton(appbarActionButton: AppbarActionButton.add));
      BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
        gotoScreen: Screen.transactions,
        gotoWidget: ScreenTransactions(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "please give information correctly",
        textAlign: TextAlign.center,
      )));
    }
  }
}

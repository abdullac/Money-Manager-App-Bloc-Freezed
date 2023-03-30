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

enum ViewedScreen {
  transactions,
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

  static ViewedScreen viewedScreen = ViewedScreen.transactions;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MainPageBloc>(context)
          .add(const ChangeAppBarTitle(appBarTitle: "Money Manager App M"));
      BlocProvider.of<MainPageBloc>(context).add(
          const ChangeActionButton(appbarActionButton: AppbarActionButton.add));
    });
    return Scaffold(
      appBar: AppBar(
        leading: BlocBuilder<MainPageBloc, MainPageState>(
          builder: (context, state) {
            return state.goBackButton;
          },
        ),
        title: BlocBuilder<MainPageBloc, MainPageState>(
          builder: (context, state) {
            return Text(state.appBarTitle);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              // appBar action Button pressed
              if (viewedScreen == ViewedScreen.transactions) {
                BlocProvider.of<MainPageBloc>(context)
                    .add(const GotoAddTransactionPage());
              } else if (viewedScreen == ViewedScreen.incomeCategory) {
                BlocProvider.of<MainPageBloc>(context)
                    .add(const GotoAddTransactionPage());
              } else if (viewedScreen == ViewedScreen.expenseCategory) {
                BlocProvider.of<MainPageBloc>(context)
                    .add(const GotoAddTransactionPage());
              } else if (viewedScreen == ViewedScreen.incomeTransactionList) {
                BlocProvider.of<MainPageBloc>(context)
                    .add(const GotoAddTransactionPage());
              } else if (viewedScreen == ViewedScreen.expenseTransactionList) {
                BlocProvider.of<MainPageBloc>(context)
                    .add(const GotoAddTransactionPage());
              } else if (viewedScreen == ViewedScreen.addTransaction) {
                addTransaction(context);
              } else if (viewedScreen == ViewedScreen.updateTransaction) {
              } else if (viewedScreen == ViewedScreen.transactionView) {
              } else {
                ///
              }
            },
            icon: BlocBuilder<MainPageBloc, MainPageState>(
              builder: (context, state) {
                return Icon(state.icon);
              },
            ),
          )
        ],
      ),
      body: BlocBuilder<MainPageBloc, MainPageState>(
        builder: (context, state) {
          return state.goToWidget ??
              SafeArea(
                child: state.position == 0
                    ? const ScreenTransactions()
                    : const ScreenCategory(),
                // ScreenCategoryTransactionList(),
                // ScreenTransactionView(),
                // AddTransactionScreen(),
              );
        },
      ),
      bottomNavigationBar: BlocBuilder<MainPageBloc, MainPageState>(
        builder: (context, state) {
          // selectedIndex = state.position;
          return BottomNavigationBar(
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
              BlocProvider.of<MainPageBloc>(context)
                  .add(ChangeBottomNavigationBarItem(position: value));
            },
            // currentIndex: selectedIndex,
            currentIndex: state.position,
          );
        },
      ),
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
      BlocProvider.of<MainPageBloc>(context)
          .add(const GotoPageWidget(gotoWidget: ScreenTransactions()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "please give information correctly",
        textAlign: TextAlign.center,
      )));
    }
  }
}

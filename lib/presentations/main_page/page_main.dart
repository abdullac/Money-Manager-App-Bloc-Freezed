import 'package:flutter/material.dart';
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

int selectedIndex = 0;

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  static ViewedScreen viewedScreen = ViewedScreen.transactions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text("Money Manager MM"),
        actions: [
          IconButton(
            onPressed: () {
              // appBar action Button pressed
              if (viewedScreen == ViewedScreen.transactions) {
              } else if (viewedScreen == ViewedScreen.incomeCategory) {
              } else if (viewedScreen == ViewedScreen.expenseCategory) {
              } else if (viewedScreen == ViewedScreen.incomeTransactionList) {
              } else if (viewedScreen == ViewedScreen.expenseTransactionList) {
              } else if (viewedScreen == ViewedScreen.addTransaction) {
                /// add transaction
                TransactionModel(
                  transactionId: AddTransactionScreen.transactionId,
                  amount: AddTransactionScreen.amountEditingController.text,
                  transactionType: AddTransactionScreen.radioValue,
                  category: AddTransactionScreen.dropdownButtonValue,
                  date: AddTransactionScreen.selectedDate,
                  description:
                      AddTransactionScreen.descriptionEditingController.text,
                );
              } else if (viewedScreen == ViewedScreen.updateTransaction) {
              } else if (viewedScreen == ViewedScreen.transactionView) {
              } else {
                ///
              }
            },
            icon: const Icon(Icons.add_card),
          )
        ],
      ),
      body: SafeArea(
        child:
            // selectedIndex == 0 ? const ScreenTransactions() : ScreenCategory(),
            // ScreenCategoryTransactionList(),
            // ScreenTransactionView(),
            AddTransactionScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.money),
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
          selectedIndex = value;
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}

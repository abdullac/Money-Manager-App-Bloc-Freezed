import 'package:flutter/material.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

int selectedTabBarIndex = 0;

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(100, 25),
        child: DefaultTabController(
          length: 2,
          initialIndex: selectedTabBarIndex,
          animationDuration: const Duration(milliseconds: 500),
          child: Container(
            color: Colors.blue[300],
            child: TabBar(
              tabs: [
                Row(
                  children: const [
                    Icon(Icons.arrow_downward),
                    Text("Income"),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.arrow_upward),
                    Text("Expense"),
                  ],
                ),
              ],
              onTap: (value) {
                // tabBar onTap
                selectedTabBarIndex = value;
              },
            ),
          ),
        ),
      ),
      body: selectedTabBarIndex == 0
          ? const TransactionListView(
              isTransactionScreen: false,
              transactionType: TransactionType.income,
            )
          : const TransactionListView(
              isTransactionScreen: false,
              transactionType: TransactionType.expense),
    );
  }
}

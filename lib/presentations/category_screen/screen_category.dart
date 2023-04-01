import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/presentations/category_screen/screens/screen_expense_category.dart';
import 'package:money_manger_bloc/presentations/category_screen/screens/screen_income_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

// int selectedTabBarIndex = 0;

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.category;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CategoryBloc>(context)
          .add(const ChangeCategoryScreen(position: 0));
    });
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 25),
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              return DefaultTabController(
                length: 2,
                // initialIndex: selectedTabBarIndex,
                initialIndex: state.position,
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

                      BlocProvider.of<CategoryBloc>(context)
                          .add(ChangeCategoryScreen(position: value));
                      // selectedTabBarIndex = value;
                    },
                  ),
                ),
              );
            },
          ),
        ),
        // body: selectedTabBarIndex == 0
        //     ? const TransactionListView(
        //         isTransactionScreen: false,
        //         // transactionType: TransactionType.income,
        //       )
        //     : const TransactionListView(
        //         isTransactionScreen: false,
        //         // transactionType: TransactionType.expense,
        //       ),
        // body: selectedTabBarIndex == 0
        //     ? const Center(
        //         child: Text(
        //         "fsdfdfsf",
        //         style: TextStyle(color: Colors.pink),
        //       ))
        //     : const Center(
        //         child: Text(
        //           "aaaaaaaaaaa",
        //           style: TextStyle(color: Colors.green),
        //         ),
        //       ),
        body:
            BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
          if (state.position == 0) {
            MainPage.viewedScreen = Screen.incomeCategory;
            BlocProvider.of<CategoryBloc>(context)
                .add(const GoToIncomeCatogoryPage());
            return const ScreenIncomeCategory();
          } else {
            MainPage.viewedScreen = Screen.expenseCategory;
            BlocProvider.of<CategoryBloc>(context)
                .add(const GoToExpenseCatogoryPage());
            return const ScreenExpenseCategory();
          }
          //   );
        }));
  }
}

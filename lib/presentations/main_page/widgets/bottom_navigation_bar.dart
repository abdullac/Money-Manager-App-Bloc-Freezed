import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/presentations/category_screen/screen_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

Widget bottomNavigationBar(MainPageState state, BuildContext context) {
  return state.position == null
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
            if (value == 0) {
              MainPage.viewedScreen = Screen.transactions;
              BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
                gotoScreen: Screen.transactions,
                gotoWidget: ScreenTransactions(),
              ));
              BlocProvider.of<TransactionsBloc>(context)
                  .add(const ViewTransactionList());
            } else {
              MainPage.viewedScreen = Screen.incomeCategory;
              BlocProvider.of<MainPageBloc>(context).add(const ViewMainPage(
                gotoScreen: Screen.incomeCategory,
                gotoWidget: ScreenCategory(),
              ));
              BlocProvider.of<CategoryBloc>(context)
                  .add(const GoToIncomeCatogoryPage());
            }
          },
          currentIndex: state.position!,
        );
}

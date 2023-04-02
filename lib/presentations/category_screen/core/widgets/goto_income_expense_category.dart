import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/category_screen/screens/screen_expense_category.dart';
import 'package:money_manger_bloc/presentations/category_screen/screens/screen_income_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

class GotoIncomeOrExpenseCategoryPage extends StatelessWidget {
  const GotoIncomeOrExpenseCategoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
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
        });
  }
}

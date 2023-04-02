import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/category_screen/core/widgets/goto_income_expense_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.category;
    // call bloc provider for set tabBar ui and show incomeCategory page after Category page widgetsBinding
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CategoryBloc>(context)
          .add(const ChangeCategoryScreen(position: 0));
    });
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 25),
          // bloc builder for change tabs ui by value
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              return DefaultTabController(
                length: 2,
                initialIndex: state.position,
                animationDuration: const Duration(milliseconds: 500),
                child: Container(
                  color: Colors.blue[300],
                  child: TabBar(
                    tabs: [
                      /// tabs
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
                      // tabBar onTap for IncomeOrExpenseCategoryPage by onTap value with bloc provider
                      BlocProvider.of<CategoryBloc>(context)
                          .add(ChangeCategoryScreen(position: value));
                    },
                  ),
                ),
              );
            },
          ),
        ),
        body: const GotoIncomeOrExpenseCategoryPage());
  }
}

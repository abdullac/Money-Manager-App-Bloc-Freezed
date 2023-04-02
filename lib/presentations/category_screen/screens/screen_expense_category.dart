import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'screen_transactions_by_category.dart';

class ScreenExpenseCategory extends StatelessWidget {
  const ScreenExpenseCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.expenseCategory;
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.transactionsModelList.length,
          itemBuilder: (context, index) {
            String? category = state.categoryList[index];
            return state.isListByCategory == true

                ///  show transactionListByCategory page when state.isListByCategory == true. otherwise expenseCategory page

                ? ScreenTransactionListByCategory(
                    transactionsModelList: state.transactionsModelList,
                    category: category ?? "*Category not provided",
                  )
                : Container(
                    margin: const EdgeInsets.all(5),
                    decoration: listTileDeorationAndShadows,
                    child: ListTile(
                      onTap: () {
                        // list tile on tap
                        // bloc provider for got0 expense category page
                        BlocProvider.of<CategoryBloc>(context)
                            .add(ViewTransactionListByCatogory(
                          category: category ?? "*Category not provided",
                          transactionType: TransactionType.expense,
                        ));
                      },
                      title: Text(
                        category ?? "*No Title provided",
                      ),
                    ),
                  );
          },
        );
      },
    );
  }
}

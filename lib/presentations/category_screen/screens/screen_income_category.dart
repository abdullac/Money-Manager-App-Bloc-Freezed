import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'screen_transactions_by_category.dart';

class ScreenIncomeCategory extends StatelessWidget {
  const ScreenIncomeCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.incomeCategory;
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.isListByCategory == true

            ///  show transactionListByCategory page when state.isListByCategory == true. otherwise incomeCategory page
            ? ScreenTransactionListByCategory(
                transactionsModelList: state.transactionsModelList,
                category: state.transactionsModelList[0].category ??
                    "*Category not provided",
              )
            : ListView.builder(
                itemCount: state.categoryList.length,
                itemBuilder: (context, index) {
                  String? category = state.categoryList[index];

                  return Container(
                    margin: const EdgeInsets.all(5),
                    decoration: listTileDeorationAndShadows,
                    child: ListTile(
                      onTap: () {
                        // list tile on tap
                        // bloc provider for goto incom category page
                        BlocProvider.of<CategoryBloc>(context)
                            .add(ViewTransactionListByCatogory(
                          category: category ?? "*Category not provided",
                          transactionType: TransactionType.income,
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

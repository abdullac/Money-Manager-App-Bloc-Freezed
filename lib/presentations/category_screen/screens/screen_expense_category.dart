import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';
import 'screen_transactions_by_category.dart';

class ScreenExpenseCategory extends StatelessWidget {
  const ScreenExpenseCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.expenseCategory;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<CategoryBloc>(context)
      //     .add(const GoToExpenseCatogoryPage());
    });
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.transactionsModelList.length,
          itemBuilder: (context, index) {
            // TransactionModel transactionModel =
            //     state.transactionsModelList[index];
            String? category = state.categoryList[index];
            return state.isListByCategory == true
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
                        BlocProvider.of<CategoryBloc>(context)
                            .add(ViewTransactionListByCatogory(
                          category: category ?? "*Category not provided",
                          transactionType: TransactionType.expense,
                          // position: 0,
                        ));
                      },
                      title: Text(
                        category ?? "*No Title provided",
                      ),
                      trailing: SizedBox(
                        height: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            // InkWell(
                            //   onTap: () {
                            //     // item Delete onTap
                            //   },
                            //   child: const Icon(Icons.delete),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  );
          },
        );
      },
    );
  }
}

// enum TransactionType {
//   income,
//   expense,
//   incomeAndExpense,
// }

var listTileDeorationAndShadows = BoxDecoration(
  color: Colors.blue[200],
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(1, 1),
      blurRadius: 2,
      spreadRadius: 2,
    )
  ],
);

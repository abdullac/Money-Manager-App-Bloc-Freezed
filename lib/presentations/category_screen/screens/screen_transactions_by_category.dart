import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/category_screen/screens/screen_expense_category.dart';
import 'package:money_manger_bloc/presentations/category_screen/screens/screen_income_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/screen_transaction_view.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

class ScreenTransactionListByCategory extends StatelessWidget {
  final List<TransactionModel> transactionsModelList;
  final String category;
  const ScreenTransactionListByCategory({
    Key? key,
    required this.transactionsModelList,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Widget? gotoWidget = Center(
      child: Container(
        height: 20,
        width: 30,
        color: Colors.purple,
      ),
    );
    if (MainPage.viewedScreen == Screen.incomeCategory) {
      MainPage.viewedScreen = Screen.incomeTransactionListByCategory;
      // gotoWidget = ScreenIncomeCategory();
    }
    if (MainPage.viewedScreen == Screen.expenseCategory) {
      MainPage.viewedScreen = Screen.expenseTransactionListByCategory;
      // gotoWidget = ScreenExpenseCategory();
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MainPageBloc>(context).add(ViewMainPage(
          gotoScreen: MainPage.viewedScreen,
          gotoWidget: ScreenTransactionListByCategory(
              transactionsModelList: transactionsModelList, category: category),
          // gotoWidget: gotoWidget!,
          transactionCategoryTitle: category));
      //   BlocProvider.of<CategoryBloc>(context)
      //       .add(const ViewTransactionListByCatogory(
      //     position: 0,
      //     // transactionType: TransactionType.income,
      //     category: "mango",
      //   ));
    });
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: transactionsModelList.length,
        itemBuilder: (context, index) {
          TransactionModel transactionModel = transactionsModelList[index];
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: listTileDeorationAndShadows,
            child: ListTile(
              onTap: () {
                // list tile on tap
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenTransactionView(
                    transactionModel: transactionModel,
                  ),
                ));
              },
              leading: SizedBox(
                width: 35,
                child: Center(
                  child: Text(
                    (DateFormat("dd\nMMM\nyyyy")
                        .format(transactionModel.date ?? DateTime.now())),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ),
              title: Text(
                transactionModel.amount,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   MainPage.viewedScreen == Screen.transactions
                    //       ? transactionModel.amount
                    //       : "n",
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    // ),
                    Text(
                      transactionModel.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ),
              trailing: SizedBox(
                height: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    transactionModel.transactionType == TransactionType.income
                        ? Icon(
                            Icons.arrow_downward,
                            color: Colors.green[500],
                          )
                        : Icon(
                            Icons.arrow_upward,
                            color: Colors.red[300],
                          ),
                    const SizedBox(
                      width: 8,
                    ),
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
      ),
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

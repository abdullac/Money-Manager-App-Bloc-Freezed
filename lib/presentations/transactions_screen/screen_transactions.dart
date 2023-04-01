import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transaction_view-screen/screen_transaction_view.dart';

enum TransactionType {
  income,
  expense,
  incomeAndExpense,
}

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.transactions;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TransactionsBloc>(context)
          .add(const ViewTransactionList());
    });
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.transactionModelList.length,
          // itemCount: transactionModelList.length,
          itemBuilder: (context, index) {
            TransactionModel transactionModel =
                state.transactionModelList[index];
                // transactionModelList[index];
            return Container(
              margin: const EdgeInsets.all(5),
              decoration: listTileDeorationAndShadows,
              child: ListTile(
                onTap: () {
                  //  list tile on tap
                 
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenTransactionView(
                        transactionModel: transactionModel,
                      ),));
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
                  transactionModel.category ?? "*No Title provided",
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MainPage.viewedScreen == Screen.transactions
                            ? transactionModel.amount
                            : "n",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
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
        );
      },
    );
  }
}

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







// list Item on tap
        // if (MainPage.viewedScreen == Screen.incomeCategory &&
        //     transactionModel.category != null) {
        //   Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
        //     return ScreenCategoryTransactionList(
        //       category: transactionModel.category!,
        //       viewedScreen: Screen.incomeCategory,
        //     );
        //   }));
        // } else if (MainPage.viewedScreen == Screen.expenseCategory &&
        //     transactionModel.category != null) {
        //   Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
        //     return ScreenCategoryTransactionList(
        //       category: transactionModel.category!,
        //       viewedScreen: Screen.expenseCategory,
        //     );
        //   }));
        // } else if (MainPage.viewedScreen == Screen.transactions) {
        //   Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
        //     return ScreenTransactionView(transactionModel: transactionModel);
        //   }));
        // } else if (MainPage.viewedScreen ==
        //     Screen.incomeCategoryTransactionList) {
        //   Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
        //     return ScreenTransactionView(transactionModel: transactionModel);
        //   }));
        // }
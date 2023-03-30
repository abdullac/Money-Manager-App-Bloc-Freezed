import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

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
        return TransactionListView(
          isTransactionScreen: true,
          transactionType: TransactionType.incomeAndExpense,
          transactionModelList: state.transactionModelList,
        );
      },
    );
  }
}

class TransactionListView extends StatelessWidget {
  final bool isTransactionScreen;
  final TransactionType transactionType;
  final List<TransactionModel> transactionModelList;
  const TransactionListView({
    super.key,
    required this.isTransactionScreen,
    required this.transactionType,
    required this.transactionModelList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ListItemTileWidget(
        isTransactionScreen: true,
        // transactionType: transactionType,
        transactionModel: transactionModelList[index],
      ),
      itemCount: transactionModelList.length,
    );
  }
}

enum TransactionType {
  income,
  expense,
  incomeAndExpense,
}

class ListItemTileWidget extends StatelessWidget {
  final bool isTransactionScreen;
  // final TransactionType transactionType;
  final TransactionModel transactionModel;
  const ListItemTileWidget({
    super.key,
    required this.isTransactionScreen,
    // required this.transactionType,
    required this.transactionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: listTileDeorationAndShadows,
      child: ListTile(
        isThreeLine: true,
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
          isTransactionScreen == true
              ? transactionModel.category ?? "No Title provided"
              : transactionModel.amount,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isTransactionScreen == true ? transactionModel.amount : "n",
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
              isTransactionScreen == true
                  // ? transactionType == TransactionType.income
                  ? transactionModel.transactionType == TransactionType.income
                      ? Icon(
                          Icons.arrow_downward,
                          color: Colors.green[500],
                        )
                      : Icon(
                          Icons.arrow_upward,
                          color: Colors.red[300],
                        )
                  : const SizedBox(),
              const SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                  // item Delete onTap
                },
                child: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
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

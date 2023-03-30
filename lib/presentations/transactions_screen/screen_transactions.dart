import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TransactionsBloc>(context)
          .add(const ViewTransactionList());
    });
    return const TransactionListView(
      isTransactionScreen: true,
      transactionType: TransactionType.expense,
    );
  }
}

class TransactionListView extends StatelessWidget {
  final bool isTransactionScreen;
  final TransactionType transactionType;
  const TransactionListView({
    super.key,
    required this.isTransactionScreen,
    required this.transactionType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, transactionsState) {
        return ListView.builder(
          itemBuilder: (context, index) => ListItemTileWidget(
            isTransactionScreen: true,
            transactionType: transactionType,
          ),
          itemCount: transactionsState.transactionModelList.length,
        );
      },
    );
  }
}

enum TransactionType {
  income,
  expense,
}

class ListItemTileWidget extends StatelessWidget {
  final bool isTransactionScreen;
  final TransactionType transactionType;
  const ListItemTileWidget({
    super.key,
    required this.isTransactionScreen,
    required this.transactionType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: listTileDeorationAndShadows,
      child: ListTile(
        isThreeLine: true,
        leading: const SizedBox(
          width: 35,
          child: Center(
            child: Text(
              "22:11\n15 Mar\n2023",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        ),
        title: Text(
          isTransactionScreen == true ? "Title" : "Amount",
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isTransactionScreen == true ? "Amount" : "n",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Text(
                "Description",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black38),
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
                  ? InkWell(
                      onTap: () {
                        // transaction type onTap
                      },
                      child: transactionType == TransactionType.income
                          ? Icon(
                              Icons.arrow_downward,
                              color: Colors.green[500],
                            )
                          : Icon(
                              Icons.arrow_upward,
                              color: Colors.red[300],
                            ),
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

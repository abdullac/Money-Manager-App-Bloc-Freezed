import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/core/widgets/amount_and_description.dart';
import 'package:money_manger_bloc/core/widgets/date.dart';
import 'package:money_manger_bloc/core/widgets/transaction_type_icon.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/core/functions.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = Screen.transactions;
    // bloc provider for get all transactions after widget binding
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TransactionsBloc>(context)
          .add(const ViewTransactionList());
    });
    // bloc builder for get all transactions from storage
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        // all transactions listView
        return ListView.builder(
          itemCount: state.transactionModelList.length,
          itemBuilder: (context, index) {
            TransactionModel transactionModel =
                state.transactionModelList[index];
            var transactionTitle = Text(
              transactionModel.category ?? "*No Title provided",
            );
            return Container(
              margin: const EdgeInsets.all(5),
              decoration: listTileDeorationAndShadows,
              child: ListTile(
                onTap: () {
                  //  list tile on tap
                  screenTransactionsListTileOnTap(context, transactionModel);
                },
                // list tile items ( date, amount, category, transaction type, description )
                leading: DateWidget(transactionModel: transactionModel),
                title: transactionTitle,
                subtitle:
                    AmountAndDescription(transactionModel: transactionModel),
                trailing:
                    TransactionTypeIcon(transactionModel: transactionModel),
              ),
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transaction_view/transaction_view_bloc.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_repo.dart';
import 'package:money_manger_bloc/main.dart';
import 'package:money_manger_bloc/presentations/main_page/widgets/app_bar.dart';
import 'package:money_manger_bloc/presentations/main_page/widgets/bottom_navigation_bar.dart';

enum Screen {
  transactions,
  category,
  incomeCategory,
  expenseCategory,
  incomeTransactionListByCategory,
  expenseTransactionListByCategory,
  addTransaction,
  updateTransaction,
  transactionView,
}

enum AppbarActionButton {
  add,
  save,
  update,
}

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  static Screen viewedScreen = Screen.transactions;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // transactionModelList = await TransactionsRepo.getAllFromStorage();
    });
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: appBar(context, state),
          body: state.goToWidget,
          bottomNavigationBar: bottomNavigationBar(state, context),
        );
      },
    );
  }
}








      // BlocProvider.of<TransactionViewBloc>(context).add(
      //   const TransactionViewPage(transactionViewPage: null),
      // );
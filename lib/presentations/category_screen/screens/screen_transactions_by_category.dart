import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/presentations/category_screen/core/widgets/listTile_by_category.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

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
    screenToBeShowsInformation();
    // blocProvider for goto screen transaction list page after widget binding
    callBlocProvider(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,

      /// List view
      child: ListView.builder(
        itemCount: transactionsModelList.length,
        itemBuilder: (context, index) {
          TransactionModel transactionModel = transactionsModelList[index];
          var amountTitle = Text(
            transactionModel.amount,
          );
          return ListTileByCategory(
              transactionModel: transactionModel, amountTitle: amountTitle);
        },
      ),
    );
  }

  void callBlocProvider(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MainPageBloc>(context).add(ViewMainPage(
          gotoScreen: MainPage.viewedScreen,
          gotoWidget: ScreenTransactionListByCategory(
              transactionsModelList: transactionsModelList, category: category),
          transactionCategoryTitle: category));
    });
  }

  void screenToBeShowsInformation() {
    if (MainPage.viewedScreen == Screen.incomeCategory) {
      MainPage.viewedScreen = Screen.incomeTransactionListByCategory;
    }
    if (MainPage.viewedScreen == Screen.expenseCategory) {
      MainPage.viewedScreen = Screen.expenseTransactionListByCategory;
    }
  }
}

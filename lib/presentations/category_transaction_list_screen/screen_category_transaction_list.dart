// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:money_manger_bloc/applications/category/category_bloc.dart';
// import 'package:money_manger_bloc/presentations/main_page/page_main.dart';
// import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

// class ScreenCategoryTransactionList extends StatelessWidget {
//   final Screen viewedScreen;
//   final String category;
//   const ScreenCategoryTransactionList({
//     Key? key,
//     required this.viewedScreen,
//     required this.category,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     MainPage.viewedScreen = viewedScreen == Screen.incomeCategory
//         ? Screen.incomeCategoryTransactionList
//         : Screen.expenseCategoryTransactionList;
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       BlocProvider.of<CategoryBloc>(context).add(
//         ViewTransactionCatogoryPage(
//             transactionType: viewedScreen == Screen.incomeCategory
//                 ? TransactionType.income
//                 : TransactionType.expense,
//             category: category),
//       );
//     });
//     return Scaffold(
//       appBar: AppBar(
//         title:
//             Text(viewedScreen == Screen.incomeCategory ? "Income" : "Expence"),
//       ),
//       body: BlocBuilder<CategoryBloc, CategoryState>(
//         builder: (context, state) {
//           MainPage.viewedScreen = viewedScreen == Screen.incomeCategory
//               ? Screen.incomeCategoryTransactionList
//               : Screen.expenseCategoryTransactionList;
//           return ScreenTransactions();

//           // TransactionListView(
//           //   transactionType: TransactionType.incomeAndExpense,
//           //   transactionModelList: state.transactionsModelList,
//           // );
//         },
//       ),
//     );
//   }
// }

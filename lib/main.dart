import 'package:flutter/material.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/applications/category/category_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/applications/transactions/transactions_bloc.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';

import 'presentations/main_page/page_main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<TransactionModel> transactionModelList = [];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddTransactionBloc()),
        BlocProvider(create: (context) => MainPageBloc()),
        BlocProvider(create: (context) => TransactionsBloc()),
        BlocProvider(create: (context) => CategoryBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';

import 'presentations/main_page/page_main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddTransactionBloc(),
        ),
      ],
      child: const MaterialApp(
        home: MainPage(),
      ),
    );
  }
}


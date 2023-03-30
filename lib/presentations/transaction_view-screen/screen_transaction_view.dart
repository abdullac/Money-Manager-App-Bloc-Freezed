

import 'package:flutter/material.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

class ScreenTransactionView extends StatelessWidget {
const ScreenTransactionView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
        MainPage.viewedScreen = Screen.transactionView;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Amount"),
          Text("Date"),
          Text("Category"),
          Text("Expense"),
          ElevatedButton(onPressed: (){
            // delete this transaction button
          }, child: Text("Delete"))
        ],
      ),
    );
  }
}
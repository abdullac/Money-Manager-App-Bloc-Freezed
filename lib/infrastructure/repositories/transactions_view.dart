import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:money_manger_bloc/domain/models/storage_model.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/add_transaction_repo.dart';

class TransactionsView {
  static deleteItemFromStorage(
      {required TransactionModel transactionModel}) async {
    String deleteId = transactionModel.transactionId.toString();
    try {
      final response =
          await Dio(BaseOptions()).delete("${basePath}delete/$deleteId");
      // if(response.data == 200 || response.data == 201){
      //   print("deleted Transaction $deleteId");
      // }else{
      //   print("can't delete from storage");
      // }
      if (response.data == null) {
        print("wwwwww");
      } else {
        print("qqqqqq");
      }
    } catch (e) {
      print(e);
    }
  }


}

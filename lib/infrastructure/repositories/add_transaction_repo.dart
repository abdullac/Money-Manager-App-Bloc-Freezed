import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:money_manger_bloc/domain/models/storage_model.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_repo.dart';
import 'package:money_manger_bloc/main.dart';

String basePath = "http://127.0.0.1:3000/note/";

class AddTransactionRepo {
  @override
  static saveTransaction(TransactionModel transactionModel) async {
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.add(transactionModel);
    print(transactionModelList);
  }

  static saveToStorage(TransactionModel transactionModel) async {
    try {
      final transactionModelJsonString = jsonEncode(transactionModel);
      final storageModel = StorageModel(
        id: transactionModel.transactionId.toString(),
        title: transactionModel.amount,
        content: transactionModelJsonString,
      );
      final storageModelJson = storageModel.toJson();
      final response = await Dio(BaseOptions()).post(
        "${basePath}create",
        data: storageModelJson,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var getStorageModel = StorageModel.fromJson(response.data);
        print("storageModel $getStorageModel");
        print("test");
      } else {
        print("saveto storage error A");
      }
    } catch (e) {
      print("catch $e");
    }
  }

    static editItemFromStorage(
      {required TransactionModel transactionModel}) async {
    // String updateId = transactionModel.transactionId.toString();
    // String title = transactionModel.amount;
    try {
      // final response =
      //     await Dio(BaseOptions()).put("${basePath}update",
      //     data: );



       final transactionModelJsonString = jsonEncode(transactionModel);
      final storageModel = StorageModel(
        id: transactionModel.transactionId.toString(),
        title: transactionModel.amount,
        content: transactionModelJsonString,
      );
      final storageModelJson = storageModel.toJson();
      final response = await Dio(BaseOptions()).put(
        "${basePath}update",
        data: storageModelJson,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var getStorageModel = StorageModel.fromJson(response.data);
        print("storageModel $getStorageModel");
        print("test");
      } else {
        print("saveto storage error A");
      }




    } catch (e) {
      print(e);
    }
  }
  
}


import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:money_manger_bloc/domain/models/storage_model.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';

String basePath = "http://127.0.0.1:3000/note/";

// to storage
class AddTransactionRepo {
  // save transaction
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
      } else {
        print("saveto storage error A");
      }
    } catch (e) {
      print("catch $e");
    }
  }

  // update transaction
  static editItemFromStorage(
      {required TransactionModel transactionModel}) async {
    try {
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
      } else {
        print("saveto storage error A");
      }
    } catch (e) {
      print(e);
    }
  }
}

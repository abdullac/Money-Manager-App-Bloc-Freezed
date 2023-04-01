import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:money_manger_bloc/domain/models/get_all_data.dart/get_all_data_from_storage.dart';
import 'package:money_manger_bloc/domain/models/storage_model.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/add_transaction_repo.dart';
import 'package:money_manger_bloc/main.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';

class TransactionsRepo {
  // static List<TransactionModel> getTransactionModelList() {
  //   List<TransactionModel> listOfTransactionModel = [];
  //   listOfTransactionModel.addAll(transactionModelList);
  //   Duration(seconds: 2);
  //   return listOfTransactionModel;
  // }

  static Future<List<TransactionModel>> getAllFromStorage() async {
    try {
      final response = await Dio(BaseOptions()).get(
        "${basePath}getAll",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final getAllFromStorage = GetAllDataFromStorage.fromJson(response.data);

        List<StorageModel> storageModelList = getAllFromStorage.data;
        List<TransactionModel> transactionModelList = storageModelList.map((e) {
          return TransactionModel.fromJson(jsonDecode(e.content));
        }).toList();
        print("transactionModelListGetAll $transactionModelList");
        print("testGetAll");
        // final transactionModelListTemp = await TransactionsRepo.getAllFromStorage();
        CategoryDropdownListButton.tempTransactionModelList
            .addAll(transactionModelList);
        // transactionModelList.addAll(transactionModelList);
        return transactionModelList;
      } else {
        print("saveto storage error A GetAll");
        return [];
      }
    } catch (e) {
      print("catch GetAll $e");
      return [];
    }
  }
}

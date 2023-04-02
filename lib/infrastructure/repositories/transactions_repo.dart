import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:money_manger_bloc/domain/models/get_all_data.dart/get_all_data_from_storage.dart';
import 'package:money_manger_bloc/domain/models/storage_model.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/add_transaction_repo.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/category_dropdownlist_widget.dart';

// get all transactions
class TransactionsRepo {
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
        CategoryDropdownListButton.tempTransactionModelList
            .addAll(transactionModelList);
        return transactionModelList;
      } else {
        print("save to storage error A GetAll");
        return [];
      }
    } catch (e) {
      print("catch GetAll $e");
      return [];
    }
  }
}

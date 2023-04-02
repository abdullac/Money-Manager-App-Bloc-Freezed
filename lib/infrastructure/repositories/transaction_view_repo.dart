import 'package:dio/dio.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/add_transaction_repo.dart';

// delete transaction from storage
class TransactionViewRepo {
  static deleteItemFromStorage(
      {required TransactionModel transactionModel}) async {
    String deleteId = transactionModel.transactionId.toString();
    try {
      final response =
          await Dio(BaseOptions()).delete("${basePath}delete/$deleteId");
      if (response.data == null) {
        print("w");
      } else {
        print("q");
      }
    } catch (e) {
      print(e);
    }
  }
}

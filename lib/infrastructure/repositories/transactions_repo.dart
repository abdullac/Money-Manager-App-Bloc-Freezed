import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/main.dart';

class TransactionsRepo {
  static List<TransactionModel> getTransactionModelList() {
    List<TransactionModel> listOfTransactionModel = [];
    listOfTransactionModel.addAll(transactionModelList);
    Duration(seconds: 2);
    return listOfTransactionModel;
  }
}

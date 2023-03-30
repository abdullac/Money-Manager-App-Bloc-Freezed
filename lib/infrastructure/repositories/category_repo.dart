import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

class CategoryRepo {
  static List<TransactionModel> getTransactionModelList(int position) {
    /// position 0 = income
    /// position 1 = expence
    TransactionType transactionType =
        position == 0 ? TransactionType.income : TransactionType.expense;
    List<TransactionModel> listOfTransactionModel = [];
    transactionModelList.forEach((element) {
      if(element.transactionType == transactionType) {
        listOfTransactionModel.add(element);
      }
    });
    return listOfTransactionModel;
  }
}

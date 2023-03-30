import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/main.dart';

class AddTransactionRepo {
  @override
  static saveTransaction(TransactionModel transactionModel) {
    transactionModelList.add(transactionModel);
    print(transactionModelList);
  }
}

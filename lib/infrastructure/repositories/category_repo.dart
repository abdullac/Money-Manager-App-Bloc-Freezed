import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_repo.dart';
import 'package:money_manger_bloc/main.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';

class CategoryRepo {
  static Future<List<TransactionModel>> getTransactionModelList(int position) async {
    /// position 0 = income
    /// position 1 = expence
    TransactionType transactionType =
        position == 0 ? TransactionType.income : TransactionType.expense;
    List<TransactionModel> listOfTransactionModel = [];
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.forEach((element) {
      if (element.transactionType == transactionType) {
        listOfTransactionModel.add(element);
      }
    });
    return listOfTransactionModel;
  }

  // static List<TransactionModel> getIncomeCategoryTransactionModelList({
  //   required TransactionType transactionType,
  //   required String category,
  // }) {
  //   /// position 0 = income
  //   /// position 1 = expence
  //   // TransactionType transactionType =
  //   //     position == 0 ? TransactionType.income : TransactionType.expense;
  //   List<TransactionModel> listOfTransactionModel = [];
  //   transactionModelList.forEach((element) {
  //     if (element.transactionType == transactionType &&
  //         element.category == category) {
  //       listOfTransactionModel.add(element);
  //     }
  //   });
  //   return listOfTransactionModel;
  // }
// 
  static Future<List<TransactionModel>> getTransactionModelListByCategory({
    required TransactionType transactionType,
    required String category,
  }) async {
    List<TransactionModel> listOfTransactionModel = [];
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.forEach((element) {
      if (element.transactionType == transactionType &&
          element.category == category) {
        listOfTransactionModel.add(element);
      }
    });
    return listOfTransactionModel;
    // List<TransactionModel> listOfTransactionModel = [];
    // tempTransactionModelList.forEach((element) {
    //   if (element.transactionType == transactionType &&
    //       element.category == category) {
    //     listOfTransactionModel.add(element);
    //   }
    // });
    // return listOfTransactionModel;
  }


  static Future<List<TransactionModel>> getIncomeTransactionModelList() async {
    Set<TransactionModel> listOfTransactionModel = {};
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.forEach((element) {
      if (element.transactionType == TransactionType.income) {
        listOfTransactionModel.add(element);
      }
    });
    return listOfTransactionModel.map((e) => e).toList();
  }

  static Future<List<TransactionModel>> getExpenseTransactionModelList() async {
    Set<TransactionModel> listOfTransactionModel = {};
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.forEach((element) {
      if (element.transactionType == TransactionType.expense) {
        listOfTransactionModel.add(element);
      }
    });
    return listOfTransactionModel.map((e) => e).toList();
  }

  static Future<List<String?>> getIncomeCategoryList() async {
    Set<String?> setOfIncomeCategory = {};
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.forEach((element) {
      if (element.transactionType == TransactionType.income) {
        setOfIncomeCategory.add(element.category);
      }
    });
    List<String?> listOfIncomeCategory =
        (setOfIncomeCategory.map((e) => e).toList());
    return listOfIncomeCategory;
  }

  static Future<List<String?>> getExpenseCategoryList() async {
    Set<String?> setOfExpenseCategory = {};
    final transactionModelList = await TransactionsRepo.getAllFromStorage();
    transactionModelList.forEach((element) {
      if (element.transactionType == TransactionType.expense) {
        setOfExpenseCategory.add(element.category);
      }
    });
    List<String?> listOfExpenseCategory =
        (setOfExpenseCategory.map((e) => e).toList());
    return listOfExpenseCategory;
  }
}

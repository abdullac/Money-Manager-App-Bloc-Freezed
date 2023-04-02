import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_repo.dart';

// from storage
class CategoryRepo {
  // getTransactionModelList by transactionType from storage
  static Future<List<TransactionModel>> getTransactionModelList(
      int position) async {
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

  //getTransactionModelList By Category
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
  }

  // get TransactionModelList by income transactionType
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

  // get TransactionModelList by expense transactionType
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

  // get category name by income transactionType
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

  // get category name by expense transactionType
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

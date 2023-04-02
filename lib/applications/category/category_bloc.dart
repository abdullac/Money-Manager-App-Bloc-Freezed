import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState.initial()) {
    on<ChangeCategoryScreen>((event, emit) async {
      List<TransactionModel> transactionsModelList =
          await CategoryRepo.getTransactionModelList(event.position);
      emit(state.copyWith(
        position: event.position,
        transactionsModelList: transactionsModelList,
        isListByCategory: false,
      ));
    });

    on<GoToIncomeCatogoryPage>(((event, emit) async {
      List<TransactionModel> transactionModelList =
          await CategoryRepo.getIncomeTransactionModelList();
      List<String?> categoryList = await CategoryRepo.getIncomeCategoryList();
      emit(state.copyWith(
        transactionsModelList: transactionModelList,
        categoryList: categoryList,
        isListByCategory: false,
      ));
    }));

    on<GoToExpenseCatogoryPage>(((event, emit) async {
      List<TransactionModel> transactionModelList =
          await CategoryRepo.getExpenseTransactionModelList();
      List<String?> categoryList = await CategoryRepo.getExpenseCategoryList();
      emit(state.copyWith(
        transactionsModelList: transactionModelList,
        categoryList: categoryList,
        isListByCategory: false,
      ));
    }));

    on<ViewTransactionListByCatogory>((event, emit) async {
      List<TransactionModel> transactionsModelList =
          await CategoryRepo.getTransactionModelListByCategory(
        transactionType: event.transactionType,
        category: event.category,
      );
      emit(state.copyWith(
        transactionsModelList: transactionsModelList,
        transactionType: event.transactionType,
        isListByCategory: true,
      ));
    });
  }
}

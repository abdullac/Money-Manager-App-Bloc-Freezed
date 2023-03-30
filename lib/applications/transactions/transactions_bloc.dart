import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/transaction_model.dart';
import 'package:money_manger_bloc/infrastructure/repositories/transactions_repo.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc() : super(TransactionsState.initial()) {
    on<ViewTransactionList>((event, emit) {
      emit(state.copyWith(
        isLoading: true,
        transactionModelList: [],
      ));
      var getTransactionModelList = TransactionsRepo.getTransactionModelList();
      print(getTransactionModelList);
      emit(state.copyWith(
        isLoading: false,
        transactionModelList: getTransactionModelList,
      ));
    });
  }
}

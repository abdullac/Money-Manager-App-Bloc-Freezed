import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/presentations/transactions_screen/screen_transactions.dart';
part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @JsonKey(name: "transaction_id") required int transactionId,
    @JsonKey(name: "amount") required String amount,
    @JsonKey(name: "transaction_type")
        required TransactionType? transactionType,
    @JsonKey(name: "category") required String? category,
    @JsonKey(name: "date") required DateTime? date,
    @JsonKey(name: "description") required String description,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

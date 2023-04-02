part of 'main_page_bloc.dart';

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.viewMainPage({
    required Screen gotoScreen,
    required Widget gotoWidget,
    String? transactionCategoryTitle,
  }) = ViewMainPage;

  const factory MainPageEvent.gotoAddTransactionPage() = GotoAddTransactionPage;

  const factory MainPageEvent.gotoPageWidget({
    required Widget gotoWidget,
  }) = GotoPageWidget;
}

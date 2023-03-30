part of 'main_page_bloc.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState({
    required int? position,
    required Widget appBarLeadingWidget,
    required String appBarTitle,
    required IconData? actionIconButton,
    // required Widget? addTransactionPage,
    required Widget goToWidget,
  }) = _MainPageState;
  factory MainPageState.initial() {
    return const MainPageState(
      position: 0,
      appBarLeadingWidget: Icon(Icons.home),
      appBarTitle: "Money Manager App MM",
      actionIconButton: Icons.add_card,
      // addTransactionPage: null,
      goToWidget: ScreenTransactions(),
    );
  }
}

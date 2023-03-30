part of 'main_page_bloc.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState({
    required int position,
    required Widget goBackButton,
    required String appBarTitle,
    required IconData? icon,
    // required Widget? addTransactionPage,
    required Widget? goToWidget,
  }) = _MainPageState;
  factory MainPageState.initial() {
    return const MainPageState(
      position: 0,
      goBackButton: Icon(Icons.home),
      appBarTitle: "Money Manager App MM",
      icon: Icons.add_card,
      // addTransactionPage: null,
      goToWidget: null,
    );
  }
}

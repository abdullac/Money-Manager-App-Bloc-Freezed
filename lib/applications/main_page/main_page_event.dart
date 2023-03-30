part of 'main_page_bloc.dart';

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.changeBottomNavigationBarItem({
    required int position,
  }) = ChangeBottomNavigationBarItem;

  const factory MainPageEvent.viewAppbarBackButton(
      {required bool isViewGoBackButton}) = ViewAppbarBackButton;

  const factory MainPageEvent.changeAppBarTitle({
    required String appBarTitle,
  }) = ChangeAppBarTitle;

  const factory MainPageEvent.changeActionButton({
    required AppbarActionButton appbarActionButton,
  }) = ChangeActionButton;

  const factory MainPageEvent.gotoAddTransactionPage() = GotoAddTransactionPage;

  const factory MainPageEvent.gotoPageWidget({
    required Widget gotoWidget,
  }) = GotoPageWidget;
}

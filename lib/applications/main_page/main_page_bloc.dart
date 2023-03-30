import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/metheds/main_page/add_transaction_page_widget.dart';
import 'package:money_manger_bloc/domain/metheds/main_page/appbar_back_button.dart';
import 'package:money_manger_bloc/domain/metheds/main_page/select_appbar_action_icon.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';
part 'main_page_bloc.freezed.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc() : super(MainPageState.initial()) {
    on<ChangeBottomNavigationBarItem>((event, emit) {
      emit(state.copyWith(
        position: event.position,
      ));
    });

    on<ViewAppbarBackButton>((event, emit) {
      bool isViewGoBackButton = event.isViewGoBackButton;
      emit(state.copyWith(
        goBackButton: appBarBackButton(isViewGoBackButton),
      ));
    });

    on<ChangeAppBarTitle>((event, emit) {
      emit(state.copyWith(
        appBarTitle: event.appBarTitle,
      ));
    });

    on<ChangeActionButton>((event, emit) {
      AppbarActionButton appbarActionButton = event.appbarActionButton;
      emit(state.copyWith(
        icon: selectAppbarActionIcon(appbarActionButton),
      ));
    });

    on<GotoAddTransactionPage>((event, emit) {
      Widget addTransactionPage = addTransactionPageWidget();
      emit(state.copyWith(
        goToWidget: addTransactionPage,
      ));
    });

    on<GotoPageWidget>((event, emit) {
      emit(state.copyWith(
        goToWidget: event.gotoWidget,
      ));
    });
  }
}

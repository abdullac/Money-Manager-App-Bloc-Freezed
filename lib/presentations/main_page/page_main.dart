import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/main_page/core/widgets/app_bar.dart';
import 'package:money_manger_bloc/presentations/main_page/core/widgets/bottom_navigation_bar.dart';

// this widget is main widget with appBar and bottomNavigationBar
class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  static Screen viewedScreen = Screen.transactions;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: appBar(context, state),
          body: state.goToWidget,
          bottomNavigationBar: bottomNavigationBar(state, context),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/presentations/main_page/core/functions_mainpage.dart';

Widget bottomNavigationBar(MainPageState state, BuildContext context) {
  var bottomNavigationBarItem1 = BottomNavigationBarItem(
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Icon(Icons.arrow_downward),
        Icon(Icons.arrow_upward),
      ],
    ),
    label: "Transactions",
  );
  const bottomNavigationBarItem2 = BottomNavigationBarItem(
    icon: Icon(Icons.category),
    label: "Category",
  );
  return state.position == null
      // hide bottomNavigationBar when add/edit/view transaction page.otherwise shows bottomNavigationBar
      ? const SizedBox()
      : BottomNavigationBar(
          items: [
            bottomNavigationBarItem1,
            bottomNavigationBarItem2,
          ],
          onTap: (value) {
            // bottom navigationBar onTap
            bottomNavigationBarItemOntap(value, context);
          },
          currentIndex: state.position!,
        );
}

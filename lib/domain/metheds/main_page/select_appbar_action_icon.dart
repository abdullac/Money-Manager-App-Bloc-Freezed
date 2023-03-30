import 'package:flutter/material.dart';
import 'package:money_manger_bloc/applications/main_page/main_page_bloc.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

IconData? selectAppbarActionIcon(AppbarActionButton appbarActionButton) {
  return appbarActionButton == AppbarActionButton.add
      ? Icons.add_card
      : appbarActionButton == AppbarActionButton.save
          ? Icons.save_alt
          : appbarActionButton == AppbarActionButton.update
              ? Icons.update
              : null;
}

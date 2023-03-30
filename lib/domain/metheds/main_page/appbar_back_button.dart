import 'package:flutter/material.dart';

StatelessWidget appBarBackButton(bool isViewGoBackButton) {
  return isViewGoBackButton == true
      ? IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // back button pressed
          },
        )
      : const Icon(Icons.home);
}

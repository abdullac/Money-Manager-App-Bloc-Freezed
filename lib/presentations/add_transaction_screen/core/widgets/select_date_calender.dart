import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manger_bloc/applications/add_transaction/add_transaction_bloc.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/add_transaction_screen.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/functions_add_transaction.dart';

class SelectDateCalender extends StatelessWidget {
  const SelectDateCalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // calender icon on pressed
        await calenderIconOnPressed(context);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.edit_calendar),
          calenderDateText(),
        ],
      ),
    );
  }

  BlocBuilder<AddTransactionBloc, AddTransactionState> calenderDateText() {
    // bloc builder for calender date ui change
    return BlocBuilder<AddTransactionBloc, AddTransactionState>(
      builder: (context, state) {
        AddTransactionScreen.selectedDate = state.selectedDate;
        return Text(
          AddTransactionScreen.selectedDate == null
              ? "Select Date"
              : (DateFormat("dd-MMM-yyyy")
                  .format(AddTransactionScreen.selectedDate ?? DateTime.now())),
        );
      },
    );
  }
}

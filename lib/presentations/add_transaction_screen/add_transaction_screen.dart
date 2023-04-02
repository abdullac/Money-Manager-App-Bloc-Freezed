import 'package:flutter/material.dart';
import 'package:money_manger_bloc/core/constants.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/amount_editing_field.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/category_dropdownlist_widget.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/description_editing_field.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/select_date_calender.dart';
import 'package:money_manger_bloc/presentations/add_transaction_screen/core/widgets/transaction_type_radiobuttion.dart';
import 'package:money_manger_bloc/presentations/main_page/page_main.dart';

TextEditingController alertDialogTextFieldController = TextEditingController();

class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({Key? key}) : super(key: key);
  static int transactionId = DateTime.now().microsecondsSinceEpoch;
  static TextEditingController amountEditingController =
      TextEditingController();
  static TextEditingController descriptionEditingController =
      TextEditingController();
  static TransactionType? radioValue;
  static String? dropdownButtonValue;
  static DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    MainPage.viewedScreen = MainPage.viewedScreen == Screen.updateTransaction
        ? Screen.updateTransaction
        : Screen.addTransaction;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            AmountEditingField(),
            TransactionTypeRadioButtons(),
            CategoryDropdownListButton(),
            SelectDateCalender(),
            DescriptionEditingField(),
          ],
        ),
      ),
    );
  }
}

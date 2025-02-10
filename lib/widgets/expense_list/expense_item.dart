import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({
    super.key,
    required this.expense,
  });

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:Icon(categoryIcons[expense.category]),
        title: Text(expense.title),
        subtitle: Text('\$${expense.amount.toStringAsFixed(2)}'),
        trailing: Text(expense.formattedDate.toString()),
      ),
    );
  }
}

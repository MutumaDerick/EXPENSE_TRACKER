import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 10.99,
      date: DateTime.now(),
      category: Category.others,
    ),
    Expense(
      title: 'Cinema',
      amount: 4.59,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
    Expense(
      title: 'Rent',
      amount: 200,
      date: DateTime.now(),
      category: Category.bills,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('The chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses))
      ],),
    );
  }
}

import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  bills,
  transport,
  shopping,
  health,
  entertainment,
  others,
}

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.bills: Icons.receipt_long,
  Category.transport: Icons.directions_bus,
  Category.shopping: Icons.shopping_cart,
  Category.health: Icons.local_hospital,
  Category.entertainment: Icons.movie,
  Category.others: Icons.category_sharp,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

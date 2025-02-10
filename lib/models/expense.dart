import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formater = DateFormat.yMd();

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
  Category.food: Icons.fastfood_outlined,
  Category.bills: Icons.receipt_long_outlined,
  Category.transport: Icons.directions_bus_outlined,
  Category.shopping: Icons.shopping_cart_outlined,
  Category.health: Icons.local_hospital_outlined,
  Category.entertainment: Icons.movie_outlined,
  Category.others: Icons.category_outlined,
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
    return formater.format(date);
   }
}

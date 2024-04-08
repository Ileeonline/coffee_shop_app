import 'package:flutter/material.dart';

class CoffeeTypes extends StatelessWidget {
  final String CoffeeNames;
  final bool isSelected;
  CoffeeTypes({
    required this.CoffeeNames,
    required this.isSelected,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Text(
        CoffeeNames,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QueryStatus {
  const QueryStatus({
    required this.index,
    required this.key,
    required this.text,
    required this.color,
    required this.icon,
    this.isShown = true,
  });

  final int index;
  final String key;
  final String text;
  final Color color;
  final IconData icon;
  final bool isShown;
}

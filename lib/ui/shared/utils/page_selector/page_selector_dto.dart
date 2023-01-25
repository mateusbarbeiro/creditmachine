import 'package:flutter/material.dart';

class PageSelectorDto {
  final Widget page;
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final int index;

  const PageSelectorDto({
    required this.page,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIcon,
  });
}
import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
  });
  
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String? hint;
  final double borderRadius;
  final EdgeInsetsGeometry padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          isExpanded: true,
          value: value,
          hint: hint != null ? Text(hint!) : null,
          items: items,
          onChanged: onChanged,
          icon: const Icon(Icons.arrow_drop_down),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
  });

  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String? hint;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          isExpanded: true,
          value: value,
          hint: hint != null ? Text(hint!) : null,
          items: items,
          onChanged: onChanged,
          icon: const Icon(Icons.arrow_drop_down),
          dropdownColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// A custom text field widget that provides a consistent look and feel across the
/// app.
///
/// It includes features such as:
/// - Custom label and hint text [label], [hintText]
/// - Custom text input controller [controller]
/// - Support for password visibility toggle [isPasswordField]
/// - Custom keyboard type [keyboardType]
/// - Customizable number of lines [minLines], [maxLines]
/// - It can be enabled or disabled [enabled]
/// - Custom prefix icon [prefixIcon]
/// - Clear button to clear the text field
class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.onChanged,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines = 1,
    this.enabled = true,
    this.isPasswordField = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final bool isPasswordField;
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final int minLines;
  final int maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  State<CustomTextField> createState() => _State();
}

class _State extends State<CustomTextField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPasswordField;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.transparent,
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        keyboardType: widget.keyboardType,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        autofocus: false,
        enabled: widget.enabled,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon:
              widget.isPasswordField
                  ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  )
                  : widget.controller.text.isEmpty
                  ? widget.suffixIcon
                  : IconButton(
                    onPressed: () {
                      setState(() {
                        widget.controller.clear();
                      });
                    },
                    icon: const Icon(Icons.clear),
                  ),
        ),
        style: TextStyle(fontSize: 16, color: Colors.black),
        cursorColor: Colors.blue,
        onChanged: (value) {
          setState(() {}); // Para actualizar el sufijo cuando cambia el texto
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
      ),
    );
  }
}

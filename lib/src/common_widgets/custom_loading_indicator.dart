import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final double size;

  const CustomLoadingIndicator({super.key, this.size = 60.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: size,
            height: size,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
          ),
          SizedBox(
            width: size * 0.5,
            height: size * 0.5,
            child: const Icon(Icons.public),
          ),
        ],
      ),
    );
  }
}

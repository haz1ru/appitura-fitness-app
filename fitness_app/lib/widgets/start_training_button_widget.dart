import 'package:flutter/material.dart';

class StartTrainingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const StartTrainingButton({
    super.key,
    required this.onPressed,
    this.text = "Start Training",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Red long button
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF6B0F0F), // Dark red
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        // Circle play icon
        InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Color(0xFF6B0F0F),
            ),
          ),
        ),
      ],
    );
  }
}

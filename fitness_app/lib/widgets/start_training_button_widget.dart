import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';
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
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          // Red long button
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: FitTheme.meroonBut,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  text,
                  style: Fonts.cText,
                ),
              ),
            ),
          ),
          Container(
            width: 13,
            height: 7,
            color: const Color(0xFF6C0B0B),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: FitTheme.meroonBut,
            ),
            child: Center(
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: FitTheme.whiteText, 
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: FitTheme.meroonBut, 
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
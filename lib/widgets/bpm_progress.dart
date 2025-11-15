import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class BpmProgress extends StatelessWidget {
  const BpmProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return DashedCircularProgressBar.aspectRatio(
      aspectRatio: 1,
      progress: 478,
      maxProgress: 670,
      corners: StrokeCap.butt,
      foregroundColor: const Color.fromRGBO(223, 128, 84, 1),
      backgroundColor: const Color.fromRGBO(155, 82, 60, 1),
      foregroundStrokeWidth: 16,
      backgroundStrokeWidth: 16,
      animation: true,
      child: _BmpVisual(value: "165"),
    );
  }
}

class _BmpVisual extends StatelessWidget {
  const _BmpVisual({required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  TextSpan(
                    text: "\nBPM",
                    style: TextStyle(
                      color: Color.fromRGBO(187, 187, 187, 1),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(bottom: 60, child: Text("ZONA: INTENSA 🔥")),
      ],
    );
  }
}

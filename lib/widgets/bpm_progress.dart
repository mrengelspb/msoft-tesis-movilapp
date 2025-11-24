import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mqttapp/models/bpm_events.dart';

class BpmProgress extends StatelessWidget {
  const BpmProgress({super.key, required this.value, required this.zone});

  final double value;
  final BpmZone zone;

  @override
  Widget build(BuildContext context) {
    return DashedCircularProgressBar.aspectRatio(
      aspectRatio: 1,
      progress: 100,
      maxProgress: 220,
      corners: StrokeCap.butt,
      foregroundColor: zone.progressForeground,
      backgroundColor: zone.progressBackground,
      foregroundStrokeWidth: 16,
      backgroundStrokeWidth: 16,
      animation: true,
      child: _BmpVisual(value: value.toStringAsFixed(0), zone: zone),
    );
  }
}

class _BmpVisual extends StatelessWidget {
  const _BmpVisual({required this.value, required this.zone});

  final String value;
  final BpmZone zone;

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
        Positioned(bottom: 60, child: Text("ZONA ${zone.value}: ${zone.name}")),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CardioFlow", style: TextStyle(fontWeight: FontWeight.bold)),
        Text(
          "Sarah L.",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Color.fromRGBO(141, 141, 143, 1)),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key, required this.user});

  final String user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("MSOFT", style: TextStyle(fontWeight: FontWeight.bold)),
        Text(
          user,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Color.fromRGBO(141, 141, 143, 1)),
        ),
      ],
    );
  }
}

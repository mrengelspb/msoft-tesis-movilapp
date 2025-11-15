import 'package:flutter/material.dart';

import 'package:relative_time/relative_time.dart';

class BpmNotice extends StatelessWidget {
  const BpmNotice({required this.time, required this.message});

  final DateTime time;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(155, 82, 60, 1)),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Color.fromRGBO(33, 33, 35, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _titleCase(time.relativeTimeLocale(const Locale('es'))),
            style: TextStyle(color: Color.fromRGBO(187, 187, 187, 1)),
          ),
          Text(message, style: TextStyle(color: Color.fromRGBO(187, 187, 187, 1))),
        ],
      ),
    );
  }
}

String _titleCase(String s) {
  return s[0].toUpperCase() + s.substring(1);
}

import 'package:flutter/material.dart';

class BpmEventTile extends StatelessWidget {
  const BpmEventTile({super.key, required this.zone, required this.bpm});

  final int zone;
  final int bpm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(220, 122, 73, 1), Color.fromRGBO(220, 122, 76, 1)],
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Text(
        "Zona $zone | $bpm BPM",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}

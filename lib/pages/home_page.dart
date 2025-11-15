import 'package:flutter/material.dart';
import 'package:mqttapp/widgets/bpm_event_tile.dart';
import 'package:mqttapp/widgets/bpm_line_chart.dart';
import 'package:mqttapp/widgets/bpm_notice.dart';
import 'package:mqttapp/widgets/bpm_progress.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(),
        leading: const SizedBox(),
        leadingWidth: 0,
        actions: [AccountButton()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                child: BpmProgress(),
              ),
              const SizedBox(height: 10),
              BpmNotice(
                time: DateTime.now().subtract(const Duration(seconds: 9)),
                message: "Cambio: De Zona 3 a Zona 4",
              ),
              const SizedBox(height: 20),
              const Text(
                "Historial de Eventos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(height: 15),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) => BpmEventTile(zone: 1, bpm: 100),
              ),
              BpmLineChart(),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

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

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      builder: (context, controller, child) => IconButton(
        onPressed: () {
          if (controller.isOpen) {
            controller.close();
          } else {
            controller.open();
          }
        },
        icon: const Icon(Icons.account_circle),
      ),
      menuChildren: [
        MenuItemButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Cerra sesión"),
        ),
      ],
    );
  }
}

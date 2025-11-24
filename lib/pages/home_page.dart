import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mqttapp/providers/bpm_providers.dart';
import 'package:mqttapp/widgets/account_button.dart';
import 'package:mqttapp/widgets/bpm_line_chart.dart';
import 'package:mqttapp/widgets/bpm_notice.dart';
import 'package:mqttapp/widgets/bpm_progress.dart';
import 'package:mqttapp/widgets/title_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _TitleBar(),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                child: _BpmProgress(),
              ),
              const SizedBox(height: 10),
              const _BpmNotice(),
              const SizedBox(height: 20),
              // const Text(
              //   "Historial de Eventos",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              // ),
              // const SizedBox(height: 15),
              // ListView.separated(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: 3,
              //   separatorBuilder: (context, index) => const SizedBox(height: 15),
              //   itemBuilder: (context, index) => BpmEventTile(zone: 1, bpm: 100),
              // ),
              const Center(child: Text("Eje X - BPM")),
              const BpmLineChart(),
              const Center(child: Text("Eje Y - Tiempo (seg)")),
            ],
          ),
        ),
      ),
    );
  }
}

class _TitleBar extends ConsumerWidget {
  const _TitleBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(bpmCurrentValueProvider);
    return s.when(
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text(e.toString()),
      data: (d) => TitleBar(user: d.userId),
    );
  }
}

class _BpmProgress extends ConsumerWidget {
  const _BpmProgress();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(bpmCurrentValueProvider);
    return s.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Text(e.toString()),
      data: (d) => BpmProgress(value: d.bpm, zone: d.zone),
    );
  }
}

class _BpmNotice extends ConsumerWidget {
  const _BpmNotice();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(bpmZoneChangeProvider);
    return s.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Text(e.toString()),
      data: (d) => BpmNotice(
        time: DateTime.fromMillisecondsSinceEpoch(d.timestamp * 1000, isUtc: true),
        message: "Cambio: De Zona ${d.zonaAnterior.value} a Zona ${d.zonaNueva.value}",
      ),
    );
  }
}

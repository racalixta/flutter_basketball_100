import 'package:flutter/material.dart';

class TrainingDetails extends StatefulWidget {
  const TrainingDetails({super.key});

  @override
  State<TrainingDetails> createState() => _TrainingDetailsState();
}

class _TrainingDetailsState extends State<TrainingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detalhes Treino'),
        backgroundColor: Colors.deepPurple[600],
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [Text('Place Holder')],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basketball_100/widgets/training_card.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Training'),
        backgroundColor: Colors.deepPurple[600],
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: const Column(
        children: [
          TrainingCard(),
          TrainingCard(),
        ],
      ),
    );
  }
}

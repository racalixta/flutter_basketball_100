import 'package:flutter/material.dart';
import 'package:flutter_basketball_100/pages/new_training_page.dart';
import 'package:flutter_basketball_100/widgets/training_card.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  newTraining() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const NewTrainingPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treinos'),
        actions: [
          FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () => newTraining(),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
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

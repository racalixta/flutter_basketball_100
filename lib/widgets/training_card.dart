import 'package:flutter/material.dart';
import 'package:flutter_basketball_100/pages/training_details.dart';

class TrainingCard extends StatefulWidget {
  const TrainingCard({super.key});

  @override
  State<TrainingCard> createState() => _TrainingCardState();
}

class _TrainingCardState extends State<TrainingCard> {
  openDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const TrainingDetails(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(12),
        elevation: 2,
        child: InkWell(
          onTap: () => openDetails(),
          child: const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
            child: Row(
              children: [
                Text('Place Holder'),
              ],
            ),
          ),
        ));
  }
}

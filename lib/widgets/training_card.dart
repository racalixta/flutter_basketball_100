import 'package:flutter/material.dart';

class TrainingCard extends StatefulWidget {
  const TrainingCard({super.key});

  @override
  State<TrainingCard> createState() => _TrainingCardState();
}

class _TrainingCardState extends State<TrainingCard> {
  @override
  Widget build(BuildContext context) {
    return const Card(
        margin: EdgeInsets.all(12),
        elevation: 2,
        child: InkWell(
          child: Padding(
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

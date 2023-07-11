import 'package:flutter/material.dart';

class TrainingOptions extends StatefulWidget {
  const TrainingOptions({super.key});

  @override
  State<TrainingOptions> createState() => _TrainingOptionsState();
}

class _TrainingOptionsState extends State<TrainingOptions> {
  bool cornerLeft = false;
  bool wingLeft = false;
  bool center = false;
  bool wingRight = false;
  bool cornerRight = false;

  change(value, switchValue) {
    setState(() {
      switch (switchValue) {
        case 'cornerLeft':
          cornerLeft = value;
          break;
        case 'wingLeft':
          wingLeft = value;
          break;
        case 'center':
          center = value;
          break;
        case 'cornerRight':
          cornerRight = value;
          break;
        case 'wingRight':
          wingRight = value;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          value: cornerLeft,
          title: const Text('Zona Morta Esquerda'),
          onChanged: (value) => change(value, 'cornerLeft'),
        ),
        CheckboxListTile(
          value: wingLeft,
          title: const Text('Ala Esquerda'),
          onChanged: (value) => change(value, 'wingLeft'),
        ),
        CheckboxListTile(
          value: center,
          title: const Text('Centro'),
          onChanged: (value) => change(value, 'center'),
        ),
        CheckboxListTile(
          value: wingRight,
          title: const Text('Ala Direita'),
          onChanged: (value) => change(value, 'wingRight'),
        ),
        CheckboxListTile(
          value: cornerRight,
          title: const Text('Zona Morta Direita'),
          onChanged: (value) => change(value, 'cornerRight'),
        ),
      ],
    );
  }
}

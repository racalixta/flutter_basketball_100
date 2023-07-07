import 'package:flutter/material.dart';

class NewTrainingPage extends StatefulWidget {
  const NewTrainingPage({super.key});

  @override
  State<NewTrainingPage> createState() => _NewTrainingPageState();
}

class _NewTrainingPageState extends State<NewTrainingPage> {
  final formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final details = TextEditingController();
  final twoPoints = TextEditingController();
  final threePoints = TextEditingController();
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Treino'),
        backgroundColor: Colors.deepPurple[600],
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
      // backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: TextFormField(
                    controller: title,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Título',
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o título corretamente!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: TextFormField(
                    controller: details,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Detalhes',
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe os detalhes sobre o treino!';
                      }
                      return null;
                    },
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const Text(
                        'Dois Pontos',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: TextFormField(
                          controller: twoPoints,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Quantidade de Chutes',
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Informe a quantidade corretamente!';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const Text(
                        'Três Pontos',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: TextFormField(
                          controller: threePoints,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Quantidade de Chutes',
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Informe a quantidade corretamente!';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple[600])),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Criar Treino',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

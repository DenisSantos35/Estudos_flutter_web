import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({super.key});

  @override
  State<DiferentesTamanhos> createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Diferentes tamanhos"),
        ),
        body: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 200,
                color: Colors.orange,
                child: Text("Item 1"),
              ),
              Container(
                width: 200,
                color: Colors.pink,
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
              ),
            ],
          ),
        ));
  }
}

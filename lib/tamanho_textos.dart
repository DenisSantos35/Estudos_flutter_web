import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({super.key});

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Tamanhos de textos"),
      ),
      body: const Column(
        children: [
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            " Phasellus vehicula, tortor nec ultrices pharetra, ligula libero "
            "dignissim libero, ut fermentum mauris nisl in enim. Donec tincidunt"
            " purus sit amet turpis scelerisque, ac luctus sem gravida. Integer"
            " vel ligula id eros egestas ultricies. Vestibulum aliquam posuere"
            " magna, ac congue nunc. Pellentesque sit amet orci sed velit sollicitudin"
            " consectetur sit amet ac lacus. Vivamus ut turpis eu erat egestas vulputate.",
            style: TextStyle(
              fontSize: 30,
            ),
            maxLines: 3,
          ),
          SizedBox(
            height: 50,
          ),
          const AutoSizeText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            " Phasellus vehicula, tortor nec ultrices pharetra, ligula libero "
            "dignissim libero, ut fermentum mauris nisl in enim. Donec tincidunt"
            " purus sit amet turpis scelerisque, ac luctus sem gravida. Integer"
            " vel ligula id eros egestas ultricies. Vestibulum aliquam posuere"
            " magna, ac congue nunc. Pellentesque sit amet orci sed velit sollicitudin"
            " consectetur sit amet ac lacus. Vivamus ut turpis eu erat egestas vulputate.",
            style: TextStyle(fontSize: 30),
            //maxLines: 3,
            //minFontSize: 14,
            //overflow: TextOverflow.ellipsis,
            //overflowReplacement: Text("Não coube!"),

            // minFontSize: 10,
            // maxLines: 5,
            // stepGranularity: 10,

            maxLines: 5,
            presetFontSizes: [30, 28, 26, 24, 22, 10],
          ),
        ],
      ),
    );
  }
}

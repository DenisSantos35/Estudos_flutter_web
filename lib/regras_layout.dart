import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({super.key});

  @override
  State<RegrasLayout> createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Regras Layout"),
      ),
      body: Container(
        color: Colors.orange,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(builder: (context, constraint) {
          double largura = constraint.maxWidth;
          print("Largura: $largura");
          if (largura < 600) {
            // celular
            return GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.pink,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.black26,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.purple,
                ),
              ],
            );
          } else if (largura < 960) {
            // celulares maiores e tablets
            return GridView.count(
              crossAxisCount: 4,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.pink,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.black26,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.purple,
                ),
              ],
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.pink,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.black26,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.purple,
                ),
              ],
            );
          }
          // return Container(
          //   child: Text("Denis Diogo dos Santos"),
          // );
        }),
      ),
    );
  }
}

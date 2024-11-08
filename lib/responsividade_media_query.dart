import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({super.key});

  @override
  State<ResponsividadeMediaQuery> createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    //define largura total de cada dispositivo
    double largura = MediaQuery.of(context).size.width;
    //define altura total de cada dispositivo
    double altura = MediaQuery.of(context).size.height;
    //define altura da barra de status
    double alturaBarraStatus = MediaQuery.of(context).padding.top;
    //define altura da app bar.
    double alturaAppBar = AppBar().preferredSize.height;
    // double larguraItem = largura * 0.25;
    //divide a largura da tela pela quantidade de componentes
    double larguraItem = largura / 3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Responsividade"),
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
            child: Text("Responsividade"),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.black,
            child: Text("Responsividade"),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.green,
            child: Text("Responsividade"),
          ),
        ],
      ),
    );
  }
}

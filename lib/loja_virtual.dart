import 'package:flutter/material.dart';
import 'package:learn_flutter_web/widget/item_produto.dart';
import 'package:learn_flutter_web/widget/mobile_app_bar.dart';
import 'package:learn_flutter_web/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  int _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }

    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      double largura = constraint.maxWidth;
      double altura = AppBar().preferredSize.height;
      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                preferredSize: Size(largura, altura), child: MobileAppBar())
            : PreferredSize(
                preferredSize: Size(largura, altura), child: WebAppBar()),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                ItemProduto("Notebook Acer", "2.500,00", "images/p1.jpg"),
                ItemProduto("Pnew Goodyear aro 16", "800,00", "images/p2.jpg"),
                ItemProduto("Samsung 9", "4.100,00", "images/p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,00", "images/p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "images/p5.jpg"),
                ItemProduto("Iphone 10", "1.900,00", "images/p6.jpg"),
                ItemProduto("Notebook Acer", "2.500,00", "images/p1.jpg"),
                ItemProduto("Pnew Goodyear aro 16", "800,00", "images/p2.jpg"),
                ItemProduto("Samsung 9", "4.100,00", "images/p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,00", "images/p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "images/p5.jpg"),
                ItemProduto("Iphone 10", "1.900,00", "images/p6.jpg"),
                ItemProduto("Notebook Acer", "2.500,00", "images/p1.jpg"),
                ItemProduto("Pnew Goodyear aro 16", "800,00", "images/p2.jpg"),
                ItemProduto("Samsung 9", "4.100,00", "images/p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,00", "images/p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "images/p5.jpg"),
                ItemProduto("Iphone 10", "1.900,00", "images/p6.jpg"),
                ItemProduto("Notebook Acer", "2.500,00", "images/p1.jpg"),
                ItemProduto("Pnew Goodyear aro 16", "800,00", "images/p2.jpg"),
                ItemProduto("Samsung 9", "4.100,00", "images/p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,00", "images/p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "images/p5.jpg"),
                ItemProduto("Iphone 10", "1.900,00", "images/p6.jpg"),
              ],
            )),
      );
    });
  }
}

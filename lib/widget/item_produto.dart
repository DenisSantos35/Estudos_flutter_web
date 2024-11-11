import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  ItemProduto(this.descricao, this.preco, this.imagem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              imagem,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(flex: 1, child: Text(descricao)),
          Expanded(
              flex: 1,
              child: Text(
                " R\$ ${preco}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}

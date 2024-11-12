import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Funcionario {
  //configura o valor posteriormente
  late double salario;

  calcuar() {
    salario = 100; //calculo
  }
}

class _HomeState extends State<Home> {
  //Variavel nao pode ser nula
  String? nome = "Denis";
  int idade = 10;
  double altura = 1.10;

  //E se precisar de uma variavel nula?
  String? complemento;
  int? numero;
  double? preco;

  //variaveis nulas
  //double? int? bool? List?

  //Variaveis nao nulas
  //double int bool List

  @override
  Widget build(BuildContext context) {
    /*Lista pode ser nula ? Não
    Item pode ser nulo ? Não */

    List<String> lista1 = [];
    print("Lista: $lista1");

    /*Lista pode ser nula ? sim
    Item pode ser nulo ? Não */

    List<String>? lista2;
    print("Lista 2: $lista2");

    /*Lista pode ser nula ? Não
    Item pode ser nulo ? Sim */

    List<String?> lista3 = ["item", null];
    print("Lista 3: $lista3");

    /*Lista pode ser nula ? Sim
    Item pode ser nulo ? Sim */

    List<String?>? lista4 = ["item", null];
    print("Lista 4: $lista4");

    /*
    Map pode ser nulo? Não
    Item pode ser nulo? Não
     */

    Map<String, int> map1 = {};
    print("Map: $map1");

    /*
    Map pode ser nulo? Sim
    Item pode ser nulo? Não
     */

    Map<String, int>? map2;
    print("Map: $map2");

    /*
    Map pode ser nulo? Não
    Item pode ser nulo? Sim
     */

    Map<String, int?> map3 = {'idade': null};
    print("Map: $map3");

    /*
    Map pode ser nulo? Sim
    Item pode ser nulo? Sim
     */

    Map<String, int?>? map4 = {'idade': null};
    print("Map: $map4");

    //Exemplo de mas
    Map<String, String> estados = {'SP': 'São Paulo', 'RJ': 'Rio de Janeiro'};
    estados['MG'] = "Minas Gerais";
    //estados['MG'] = null;
    print("Estados: $estados");

    //leitura do mapa retorna null
    //String valor = estados["SP"];
    //formas de definir maps
    String valor = estados["SP"]!;
    String valor2 = estados["SP"] ?? "";
    String? valor3 = estados["SP"];

    print("Estados: $valor3");
    // int? numero = 100;
    // //operador (!) -> null assertion operator
    // //So utilizar quando tiver a certeza que vai receber valor
    // int resultado = numero!;
    // print("Resultado é: $resultado");

    // //String? (pode ser nulo) -> Não consegue chamar métodos
    // //String (Não pode ser nulo) -> pode chamar métodos
    // String result = nome ?? "";
    // print("total caracteres: ${result.length}");

    // /*Como utilizar os operadores de ? & ! */
    // List<String> lista1 = ['Morango', 'Banana', 'Melão'];
    // List<String>? lista2;
    // List<String?> lista3 = ['Morango', null, 'Melão'];

    // print('lista1: $lista1');
    // print('lista2: $lista2');
    // print('lista3: $lista3');

    // List<String?> lista4 = ['Morango', null, 'Melão'];
    // String valor = lista4.first!;
    // print("valor é $valor");

    // //operador (?.) -> null aware operator
    // //ele analisa se o valor que vem antes da interrogação é nulo, se não for ele
    // //o código após se não ele retorna null
    // List<String>? lista5;
    // print("Total de itens: ${lista5?.length}");

    // Random? random;

    // //random = Random();
    // print("Numero aleatório: ${random?.nextInt(10)}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Null Safety"),
      ),
    );
  }
}

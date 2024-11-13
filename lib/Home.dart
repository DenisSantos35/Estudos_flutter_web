import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// class Funcionario {
//   //configura o valor posteriormente
//   late double salario;

//   calcuar() {
//     salario = 100; //calculo
//   }
// }

// int soma({required int primeiro, int segundo = 0}) {
//   return primeiro + segundo;
// }

// int totalCaracteres(String? texto) {
//   //if (texto == null) return 0;
//   if (texto == null) throw 'Texto nao pode ser nulo';
//   return texto.length;
// }

// class Usuario {
//   String? _nome;

//   int totalCaracteres() {
//     String? nome = _nome;
//     if (nome == null) {
//       return 0;
//     }
//     return nome.length;
//   }
// }

// 1) Late keyword

// class Usuario {
//   late String nome;

//   void configuraNome(String texto) {
//     nome = texto;
//   }
// }

// //late com referencia circular
// class Time {
//   late Treinador treinador;
// }

// class Treinador {
//   late Time time;
// }

//late - lazy (inicialização preguiçosa)
//ao colocar o late em um atributo que chama uma função
// a função será executada somente quando o atributo for chamado
//caso nao tenha toda vez que for instanciado será chamado e executado a função
// int calculaTotalItens() {
//   print("calculaTotalItens: 3");
//   return 3;
// }

// class Carrinho {
//   late int totalItens = calculaTotalItens();
// }

//inicialização de variaveis não nulas
//variaveis superiores
int total = 0;

//campos estáticos
class Pedidos {
  static int total = 0;
}

//campos de instância devem ser inicializados
// - inicialização ou construtor

class Carrinho {
  int totalItens = 0;
  String item;
  int quantidade;

  Carrinho(this.item, this.quantidade);
}

//variaveis locais
int calcularSalario(int salario) {
  int resultado;

  if (salario > 1000) {
    resultado = salario;
  } else {
    resultado = salario + 100;
  }

  return resultado;
}

class _HomeState extends State<Home> {
  // //Variavel nao pode ser nula
  // String? nome = "Denis";
  // int idade = 10;
  // double altura = 1.10;

  // //E se precisar de uma variavel nula?
  // String? complemento;
  // int? numero;
  // double? preco;

  //variaveis nulas
  //double? int? bool? List?

  //Variaveis nao nulas
  //double int bool List

  @override
  Widget build(BuildContext context) {
    //inicialização de variaveis não nulas
    //variaveis superiores
    total = 10;
    print("total: $total");
    //campos estáticos
    print("identificador: ${Pedidos.total}");
    //campos de instância devem ser inicializados
    // - inicialização ou construtor
    Carrinho carrinho = Carrinho("roda", 4);
    print("item: ${carrinho.item}, quantidade: ${carrinho.quantidade}");
    //variaveis locais
    int resultado = calcularSalario(900);
    print(resultado);

    //late -> inicialização tardia
    // Usuario usuario = Usuario();
    // usuario.configuraNome("Denis");
    // print(usuario.nome);

    // //late com referencia circular
    // Time time = Time();
    // Treinador treinador = Treinador();

    // time.treinador = treinador;
    // treinador.time = time;

    // // late - lazy (preguiçosa)
    // Carrinho carrinho = Carrinho();
    //print("total: ${carrinho.totalItens}");
    /*
    type promochon */
    // try {
    //   print(totalCaracteres(null));
    // } catch (e) {
    //   print(e);
    // }
    //String? texto;
    //texto = "Denis";
    // if (DateTime.now().hour < 12) {
    //   texto = "true";
    // } else {
    //   texto = "false";
    // }
    // print("resultado: $texto");
    // print("tamanho ${texto.length}");
    // //abordagem riquired
    // int resultado = soma(primeiro: 1, segundo: 2);
    // print(resultado);

    // /*Lista pode ser nula ? Não
    // Item pode ser nulo ? Não */

    // List<String> lista1 = [];
    // print("Lista: $lista1");

    // /*Lista pode ser nula ? sim
    // Item pode ser nulo ? Não */

    // List<String>? lista2;
    // print("Lista 2: $lista2");

    // /*Lista pode ser nula ? Não
    // Item pode ser nulo ? Sim */

    // List<String?> lista3 = ["item", null];
    // print("Lista 3: $lista3");

    // /*Lista pode ser nula ? Sim
    // Item pode ser nulo ? Sim */

    // List<String?>? lista4 = ["item", null];
    // print("Lista 4: $lista4");

    // /*
    // Map pode ser nulo? Não
    // Item pode ser nulo? Não
    //  */

    // Map<String, int> map1 = {};
    // print("Map: $map1");

    // /*
    // Map pode ser nulo? Sim
    // Item pode ser nulo? Não
    //  */

    // Map<String, int>? map2;
    // print("Map: $map2");

    // /*
    // Map pode ser nulo? Não
    // Item pode ser nulo? Sim
    //  */

    // Map<String, int?> map3 = {'idade': null};
    // print("Map: $map3");

    // /*
    // Map pode ser nulo? Sim
    // Item pode ser nulo? Sim
    //  */

    // Map<String, int?>? map4 = {'idade': null};
    // print("Map: $map4");

    // //Exemplo de mas
    // Map<String, String> estados = {'SP': 'São Paulo', 'RJ': 'Rio de Janeiro'};
    // estados['MG'] = "Minas Gerais";
    // //estados['MG'] = null;
    // print("Estados: $estados");

    // //leitura do mapa retorna null
    // //String valor = estados["SP"];
    // //formas de definir maps
    // String valor = estados["SP"]!;
    // String valor2 = estados["SP"] ?? "";
    // String? valor3 = estados["SP"];

    // print("Estados: $valor3");
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

import 'package:flutter/material.dart';
import 'package:learn_flutter_web/loja_virtual.dart';
import 'package:learn_flutter_web/orientacao.dart';
import 'package:learn_flutter_web/regras_layout.dart';
import 'package:learn_flutter_web/responsividade_media_query.dart';
import 'package:learn_flutter_web/responsividade_row_column.dart';
import 'package:learn_flutter_web/responsividade_wrap.dart';

void main() {
  runApp(const MaterialApp(
      title: "Flutter Web",
      debugShowCheckedModeBanner: false,
      home: LojaVirtual()
      //RegrasLayout()
      //Orientacao()
      //ResponsividadeWrap()
      //ResponsividadeRowColumn()
      //ResponsividadeMediaQuery(),
      ));
}

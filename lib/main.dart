import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_web/diferentes_tamanhos.dart';
import 'package:learn_flutter_web/loja_virtual.dart';
import 'package:learn_flutter_web/orientacao.dart';
import 'package:learn_flutter_web/regras_layout.dart';
import 'package:learn_flutter_web/responsividade_media_query.dart';
import 'package:learn_flutter_web/responsividade_row_column.dart';
import 'package:learn_flutter_web/responsividade_wrap.dart';
import 'package:learn_flutter_web/tamanho_proporcional.dart';
import 'package:learn_flutter_web/tamanho_textos.dart';

import 'Home.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
          title: "Flutter Web",
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.blue)),
          builder: DevicePreview.appBuilder,
          locale: DevicePreview.locale(context),
          useInheritedMediaQuery: true,
          home: Home()
          //DiferentesTamanhos()
          //TamanhoProporcional()
          //TamanhoTextos()
          //LojaVirtual()
          //RegrasLayout()
          //Orientacao()
          //ResponsividadeWrap()
          //ResponsividadeRowColumn()
          //ResponsividadeMediaQuery(),
          );
    },
  ));
}

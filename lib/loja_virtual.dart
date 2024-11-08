import 'package:flutter/material.dart';
import 'package:learn_flutter_web/widget/mobile_app_bar.dart';
import 'package:learn_flutter_web/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
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
                  preferredSize: Size(largura, altura), child: WebAppBar()));
    });
  }
}

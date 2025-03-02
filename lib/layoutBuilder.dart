import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
class layoutBuilder extends StatelessWidget {

  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget webLayout;
  final Widget rotatedLayout;

  layoutBuilder({required this.mobileLayout,required this.desktopLayout,required this.webLayout,required this.rotatedLayout});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {

      if(kIsWeb){
        return webLayout;
      }
      else if(Platform.isWindows||Platform.isLinux|| Platform.isLinux){
        return desktopLayout;
      }
      else if (constraints.maxWidth<600){
        return mobileLayout;
      }
      else if(Platform.isAndroid || Platform.isIOS && constraints.maxWidth>600){
        return rotatedLayout;
      }
      else {
        return desktopLayout;
      }
    },);
  }
}

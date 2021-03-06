import 'package:eco_web_mobx/app/shared/utilitario/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'uploadcsv_controller.dart';


class UploadcsvPage extends StatefulWidget {
  final String title;

  const UploadcsvPage({Key key, this.title = "Uploadcsv"}) : super(key: key);

  @override
  _UploadcsvPageState createState() => _UploadcsvPageState();
}

class _UploadcsvPageState
    extends ModularState<UploadcsvPage, UploadcsvController> {


  @override
  Widget build(BuildContext context) {
    controller.controllerGeral.getQuery(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          controller.header,
          _body(),
        ],
      ),
    );
  }

  _body() {
    return Container(
      width: controller.sizeW,
      height: controller.sizeH - hederHeight,
      child: Row(
        children: <Widget>[
          controller.showMenu
              ? controller.right
              : Row(
            children: <Widget>[
              controller.menu,
              controller.right,
            ],
          )
        ],
      ),
    );
  }

}

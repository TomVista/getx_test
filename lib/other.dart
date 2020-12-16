import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/main.dart';

class OtherController extends GetxController {
  String name = 'other';
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtherController>(
      init: OtherController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('otehr page'),
          ),
          body: Column(
            children: [
              Text('other page ${controller.name}'),
              FlatButton(
                  onPressed: () {
                    Get.offAll(MyHomePage());
                  },
                  child: Text('offAll to my home page'))
            ],
          ),
        );
      },
    );
  }
}

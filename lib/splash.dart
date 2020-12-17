import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/home.dart';
import 'package:getx_test/main.dart';

class Spalash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('splish'),
      ),
      body: FlatButton(
        onPressed: () {
          Get.off(MyHomePage(
            key: GlobalKey(),
            title: '11',
          ));
        },
        child: Text('button'),
      ),
    );
  }
}

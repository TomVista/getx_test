import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/other.dart';

class HomeController extends GetxController {
  String name = 'home';
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(controller.name),
                  FlatButton(
                    onPressed: () {
                      Get.to(OtherPage());
                    },
                    child: Text('to other page'),
                  ),
                  FlatButton(
                    onPressed: () {
                      print(controller.name);
                    },
                    child: Text('print controller'),
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: PageView(
                      children: [
                        StfW(),
                        StfW(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class StfW extends StatefulWidget {
  @override
  _StfWState createState() => _StfWState();
}

class _StfWState extends State<StfW> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Text(_.name);
    });
  }
}

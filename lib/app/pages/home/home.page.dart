import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterarchiteture/app/pages/home/home_controller.dart';
import 'package:flutterarchiteture/app/repositories/api_advisor_repository.dart';
import 'package:flutterarchiteture/app/services/client_http_service.dart';
import 'package:flutterarchiteture/app/viewModels/apiadvisor_viewmodel.dart';

import 'components/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(
      ApiadvisorViewModel(ApiadvisorRepository(ClientHttpService())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Architeture"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.grain),
        onPressed: () {
          controller.getTime();
        },
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CustomSwitchWidget(),
            ValueListenableBuilder(
              valueListenable: controller.time,
              builder: (context, model, child) {
                if (model?.text == null) {
                  return CircularProgressIndicator();
                }

                return Text(model.text);
              },
            )
          ],
        ),
      ),
    );
  }
}

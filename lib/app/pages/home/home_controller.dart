import 'package:flutter/cupertino.dart';
import 'package:flutterarchiteture/app/models/apiadvisor_model.dart';
import 'package:flutterarchiteture/app/viewModels/apiadvisor_viewmodel.dart';

class HomeController {
  final ApiadvisorViewModel viewModel;

  HomeController(this.viewModel);
  ValueNotifier<ApiadvisorModel> get time => viewModel.apiadvisorModel;

  getTime() {
    viewModel.fill();
  }
}

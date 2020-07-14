import 'package:flutter/cupertino.dart';
import 'package:flutterarchiteture/app/interfaces/apiadvisor_interface.dart';
import 'package:flutterarchiteture/app/models/apiadvisor_model.dart';

class ApiadvisorViewModel{

  final IApiAdvisor repository;

  final apiadvisorModel = ValueNotifier<ApiadvisorModel>(null);

  ApiadvisorViewModel(this.repository);

  fill() async{
    apiadvisorModel.value =  await repository.getTime();

  }


}
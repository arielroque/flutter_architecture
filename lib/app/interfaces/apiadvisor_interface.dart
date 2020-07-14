import 'package:flutterarchiteture/app/models/apiadvisor_model.dart';

abstract class IApiAdvisor{

  Future <ApiadvisorModel> getTime();
}
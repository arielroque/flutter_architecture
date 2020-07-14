import 'package:flutterarchiteture/app/interfaces/apiadvisor_interface.dart';
import 'package:flutterarchiteture/app/interfaces/client_http_interface.dart';
import 'package:flutterarchiteture/app/models/apiadvisor_model.dart';

class ApiadvisorRepository implements IApiAdvisor {
  final IClientHttp clientHttp;

  ApiadvisorRepository(this.clientHttp);

  @override
  Future<ApiadvisorModel> getTime() async {
    var json = await clientHttp.get(
        "http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=95a9cb1ae6b422e8d7b7a4fe634fb14f");

    ApiadvisorModel model = ApiadvisorModel.fromJson(json[0]);
    return model;
  }
}

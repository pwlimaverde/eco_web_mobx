import 'package:eco_web_mobx/app/shared/model/ops_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IUploadOpsRepository{
  Stream<List<OpsModel>> getOps();
}
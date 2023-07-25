

import '../../data/remote/model/ip_entity.model.g.dart';
import 'ip_entity.dart';

extension MapperOnIpModel on IpModel {
  IpEntity? mapper() {
    return IpEntity(
      ip: ip,
      country: country,
      cc: cc,
    );
  }
}

extension MapperOnIpEntity on IpEntity {
  IpModel? mapper() {
    return IpModel(
      ip: ip,
      country: country,
      cc: cc,
    );
  }
}

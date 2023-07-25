

import '../../../data/local/models/pagination/pagination_req_model.dart';
import 'pagination_req_entity.dart';

extension MapperOnPaginationReqModel on PaginationReqModel {
  PaginationReqEntity mapper() {
    return PaginationReqEntity(
      page: page,
      perPage: perPage,
      queryParams: queryParams,
    );
  }
}

extension MapperOnPaginationReqEntity on PaginationReqEntity {
  PaginationReqModel mapper() {
    return PaginationReqModel(
      page: page,
      perPage: perPage,
      queryParams: queryParams,
    );
  }
}

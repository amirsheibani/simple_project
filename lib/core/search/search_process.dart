import 'dart:async';

import '../../common/extension/search_debounce_extension.dart';

class SearchProcess<ResultType> {
  final StreamController<String> _query;
  final Duration duration;
  final StreamTransformer<String, ResultType> streamTransformer;

  SearchProcess({
    this.duration = const Duration(milliseconds: 300),
    required this.streamTransformer,
  }) : _query = StreamController<String>.broadcast();

  Function(String) get textChanged => _query.sink.add;

  Stream<ResultType> get result => _query.stream.where((text) => text.isNotEmpty).debounce(duration).distinct().transform(streamTransformer);
}

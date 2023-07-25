abstract class Environment {
  String? baseUrl;
  String? schema;
  String? port;
  String? prefixPath;

  String? url;
  String? externalPageUrl;
}

class Dev extends Environment {
  @override
  set baseUrl(String? _baseUrl) {
    super.baseUrl = _baseUrl;
  }

  @override
  set schema(String? _schema) {
    super.schema = _schema;
  }

  @override
  set port(String? _port) {
    super.port = _port;
  }

  @override
  set prefixPath(String? _prefixPath) {
    super.prefixPath = _prefixPath;
  }

  @override
  set externalPageUrl(String? externalPageUrl) {
    super.externalPageUrl = externalPageUrl;
  }

  @override
  String get baseUrl => super.baseUrl ?? '';
  @override
  String get schema => super.schema ?? 'http';

  @override
  String get port => super.port ?? '';
  @override
  String get prefixPath => super.prefixPath ?? 'api';
  @override
  String get externalPageUrl => super.externalPageUrl ?? '';

  @override
  String get url {
    return '$schema://$baseUrl${port != '' ? ':$port' : ''}/$prefixPath';
  }
}

class Stage extends Environment {
  @override
  set baseUrl(String? _baseUrl) {
    super.baseUrl = _baseUrl;
  }

  @override
  set schema(String? _schema) {
    super.schema = _schema;
  }

  @override
  set port(String? _port) {
    super.port = _port;
  }

  @override
  set prefixPath(String? _prefixPath) {
    super.prefixPath = _prefixPath;
  }

  @override
  set externalPageUrl(String? externalPageUrl) {
    super.externalPageUrl = externalPageUrl;
  }

  @override
  String get baseUrl => super.baseUrl ?? '';
  @override
  String get schema => super.schema ?? 'http';
  @override
  String get port => super.port ?? '';
  @override
  String get prefixPath => super.prefixPath ?? 'api';
  @override
  String get url {
    return '$schema://$baseUrl${port != '' ? ':$port' : ''}/$prefixPath';
  }

  @override
  String get externalPageUrl => super.externalPageUrl ?? '';
}

class Production extends Environment {
  @override
  set baseUrl(String? _baseUrl) {
    super.baseUrl = _baseUrl;
  }

  @override
  set schema(String? _schema) {
    super.schema = _schema;
  }

  @override
  set port(String? _port) {
    super.port = _port;
  }

  @override
  set prefixPath(String? _prefixPath) {
    super.prefixPath = _prefixPath;
  }

  @override
  set externalPageUrl(String? externalPageUrl) {
    super.externalPageUrl = externalPageUrl;
  }

  @override
  String get baseUrl => super.baseUrl ?? '';
  @override
  String get schema => super.schema ?? 'http';
  @override
  String get port => super.port ?? '';
  @override
  String get prefixPath => super.prefixPath ?? 'api';
  @override
  String get url {
    return '$schema://$baseUrl${port != '' ? ':$port' : ''}/$prefixPath';
  }

  @override
  String get externalPageUrl => super.externalPageUrl ?? '';
}

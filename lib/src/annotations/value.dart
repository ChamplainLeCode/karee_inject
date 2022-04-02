import 'package:meta/meta_meta.dart';

/// Annotation used to read and inject value from application configuration file.
/// located in `resources/config/application.yaml`
/// ```Dart
///   ... in your Service or Controller classe file
///   @Value('@{server.host}')
///   String serverHost;
///   ...
///
/// ```
///
///
/// ```yaml
///   ...
///   server:
///     host: https://msapi.karee.com
///     security:
///       type: oauth2
///       ...
/// ```
@Target({TargetKind.field})
class Value {
  final String name;

  const Value(this.name);
}

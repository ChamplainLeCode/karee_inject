import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
class ServiceAnnotation {
  const ServiceAnnotation();
}

/// Service annotation instance.
///
/// This object [Service] is used to annotated classes to set them as Service
/// managed in Karee
///
/// Usage
/// ```dart
/// @Service
/// class UserService {
///
/// }
/// ```
const ServiceAnnotation Service = ServiceAnnotation();

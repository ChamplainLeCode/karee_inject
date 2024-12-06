import 'package:meta/meta_meta.dart';

/// Annotation on classes to define them like a part of the service layer.
@Target({TargetKind.classType})
class ServiceAnnotation {
  /// Construtor of the annotation.
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

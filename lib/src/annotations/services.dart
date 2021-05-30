import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
class ServiceAnnotation {
  const ServiceAnnotation();
}

const ServiceAnnotation Service = ServiceAnnotation();

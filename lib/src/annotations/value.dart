import 'package:meta/meta_meta.dart';

@Target({TargetKind.field})
class Value {
  final String name;

  const Value(this.name);
}

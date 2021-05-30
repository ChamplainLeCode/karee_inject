import 'package:meta/meta_meta.dart';

/// Classe use to annotate screens
@Target({TargetKind.classType})
class Screen {
  final String name;
  final bool isInitial;
  const Screen(this.name, {this.isInitial = false});

  @override
  String toString() {
    return {name: name, isInitial: isInitial}.toString();
  }
}

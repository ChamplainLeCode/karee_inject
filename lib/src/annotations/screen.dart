/// Classe use to annotate screens
class Screen {
  final String name;
  final bool isInitial;
  const Screen(this.name, {this.isInitial = false});

  @override
  String toString() {
    return {name: name, isInitial: isInitial}.toString();
  }
}

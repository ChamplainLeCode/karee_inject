/// [Module] class is used to annotate other classes that define Module.
///
/// Module a used in Karee System as an atomic part of the application.
/// modules are a both standable alone and with the application with one entry
/// point.
///
/// Usage
///
///```dart
///
///@Module(name: 'users', isRoot: true)
///class UsersModule extends KareeRoutableModule {
///
///   @override
///   Future<void> initialize() async {
///     await initCore(this);
///     super.initialize();
///   }
///
///   @override
///   bool get startWithRoot => true;
///
///   @override
///   String get path => '/users';
///
///   @override
///   String get name => 'users';
///
///}
///```
class Module {
  final String name;
  final bool isRoot;

  const Module({required this.name, this.isRoot = false});
}

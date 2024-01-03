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
  /// The name of this module. Note that this name should be the same in module routes.
  final String name;

  /// This flag indicate whether the module should start before the main application.
  final bool isRoot;

  /// Constructor for a [Module]
  const Module({required this.name, this.isRoot = false});
}

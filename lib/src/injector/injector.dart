/// Karee part used to retrieve injectable via its type.
class KareeInjector {
  /// Constructor of KareeInjector
  KareeInjector();
  
  /// The variable [_instance] is used to store reference to objected injected.
  static final Map<dynamic, dynamic> _instance = {};

  /// Function used to get instance of stored object by its type.
  static T? instance<T>() => _instance[T.toString()];

  /// Function [provide] stores instance of injectable object to map.
  static void provide(dynamic instance) =>
      _instance.putIfAbsent(instance.runtimeType.toString(), () => instance);
}

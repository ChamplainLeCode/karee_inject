import 'package:meta/meta_meta.dart';

/// Annotation used to annotate screens.
///
/// Usage
///
/// When a screen is annotated with **`@Screen(name: 'myScreen')`** it means that
/// this screen can be used to be injected in Flutter Route context via the
/// KareeRouter's module.
///
/// Let assume that **MyScreen** The next screen of my application,
/// ```dart
/// @Screen(name: 'secondScreen')
/// class MyScreen extends StatelessScreen{
///
/// }
/// ```
///
/// * Screen loading by Class Name
///
/// We can add our screen to the navigation context in push mode like follow
///
/// ```dart
/// screen(MyScreen(), RouteMode.PUSH)
/// ```
///
///
/// * Screen loading by Screen name
///
/// ```dart
/// screen('secondScreen', RouteMode.PUSH)
/// ```
///
/// Note that, load a new screen by name when the application is running, will
/// not have any effect with hot reload. You must used code generation by running
/// ` karee source ` and hot restart
///
/// * Auto loading.
///
/// When the property [isInitial] of a screen is set to true, it means that this
/// screen will be the one that will be displayed as the first screen.
/// General usage of this property is reserved to splash screen or first screen
/// of the application or module.
///
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

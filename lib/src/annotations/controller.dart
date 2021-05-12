import 'package:reflectable/reflectable.dart';

///
/// @Author Champlain Marius Bakop
///
/// @email champlainmarius20@gmail.com
///
/// @github ChamplainLeCode
///
/// ControllerReflectable: constant class used to create instance of Controller annotation
class ControllerReflectable extends Reflectable {
  static Map<String, InstanceMirror> reflectors = {};
  const ControllerReflectable() : super(invokingCapability);
}

///
/// Controller: Instance of ControllerReflectable, used as Annotation on all
/// controller's class in project
const ControllerReflectable Controller = ControllerReflectable();

/// subscribeController: Function used by application to subscribe their
/// controllers in core library
///
void subscribeController(dynamic controller) {
  ControllerReflectable.reflectors[controller.runtimeType.toString()] = Controller.reflect(controller);
}

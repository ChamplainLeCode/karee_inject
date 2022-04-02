import 'package:meta/meta_meta.dart';

import '../../karee_inject.dart';

/// [ControllerReflectable] constant class used to create instance of Controller
/// annotation
@Target({TargetKind.classType})
class ControllerReflectable {
  const ControllerReflectable();
}

/// [Controller] Instance of ControllerReflectable, used as Annotation on all
/// controller's class in project.
const ControllerReflectable Controller = ControllerReflectable();

/// subscribeController: Function used by application to subscribe their
/// controllers in core library.
void subscribeController(dynamic controller) {
  KareeInjector.provide(controller);
}

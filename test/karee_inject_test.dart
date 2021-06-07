import 'package:karee_inject/karee_inject.dart'
    show
        Autowired,
        Service,
        Controller,
        ControllerReflectable,
        subscribeController;
import 'package:test/test.dart';
import 'karee_inject_test.reflectable.dart';

@Controller
class SomeController {
  int add(int a, int b) => a + b;
}

@Service
class ServiceTest {
  @Autowired
  late int t;
}

void main() {
  group('Test Karee Annotations', () {
    var myController;

    setUp(() {
      initializeReflectable();
      myController = SomeController();
    });
    test('-> Test Controllers', () {
      var initialSize = ControllerReflectable.reflectors.length;
      subscribeController(myController);
      var controllerAddedSize = ControllerReflectable.reflectors.length;

      var a = 10, b = 11;
      expect(initialSize, 0);
      expect(controllerAddedSize, 1);
      expect(
          ControllerReflectable.reflectors[myController.runtimeType.toString()]!
              .invoke('add', [a, b]),
          21);
    });
  });
}

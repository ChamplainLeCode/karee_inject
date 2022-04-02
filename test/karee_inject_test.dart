import 'package:karee_inject/karee_inject.dart'
    show Autowired, Controller, KareeInjector, Service, subscribeController;
import 'package:test/test.dart';

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
    late SomeController myController;

    setUp(() {
      myController = SomeController();
    });
    test('-> Test KareeInjector', () {
      var controller = KareeInjector.instance<SomeController>();
      subscribeController(myController);
      var controllerSubscribed = KareeInjector.instance<SomeController>();

      var a = 10, b = 11;
      expect(controller, null);
      expect(controllerSubscribed, myController);
      expect(controllerSubscribed!.add(a, b), 21);
    });
  });
}

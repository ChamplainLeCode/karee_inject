import 'package:karee_inject/karee_inject.dart';

import 'interface.dart';

@Persistable(collection: 'users')
class User {
  double id;
  String name;

  User.from({required this.id, required this.name});
}

@Service
class ServiceUser {
  @Autowired
  late DatabaseInterface db;

  User? getUserById(double id) {
    return db.find<User>().firstWhere('id', isEqualTo: id);
  }
}

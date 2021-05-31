# **Karee Inject**

 Library used to help developers
to better manage dependency injection during flutter development.

## Usage

`Karee Inject` provide an amazing collection of annotation like `Service` for services, `Value` for reading value from application config file, `Autowired` to auto initialize classe and `Persistable` 
A simple usage example:

Use of `@Persistable` with data model
```dart
import 'package:karee_inject/karee_inject.dart';

@Persistable
class User {

  double id;
  String name;

}
```

Use of `Service`to define a service, and `Autowired`to inject into property;

```dart
@Service
class ServiceUser {

  @Autowired
  DatabaseInterface db;

  User getUserById(double id){

    return db
      .find(User.runtimeType)
      .where('id', isEqualTo: id);
      
  }
}
```

## Test

```bash
# Générate additional source first
flutter packages pub run build_runner build --delete-conflicting-outputs

# Then run test
flutter test
```
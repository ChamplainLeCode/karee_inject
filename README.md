A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:karee_inject/karee_inject.dart';

@Service
class ServiceUser {

  @Autowired
  DatabaseInterface db;

  User getUserById(double id){
    
    db.find(User.runtimeType)
      .where('id', isEqualTo: id);
  }
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme

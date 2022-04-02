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

  User(this.id, this.name);

}
```

Use of `Service` to define a service, `Autowired` and `Value` to inject application configuration and other services.

```dart
@Service
class ServiceUser {

  @Value('@{application.server.base-url}')
  late final String baseUrl;

  @Autowired
  late final DatabaseInterface db;

  User? getUserById(double id){

    return db
      .find(User.runtimeType)
      .where('id', isEqualTo: id);
      
  }
}
```


Use of `Controller` to define a Controller, and `Autowired` to inject Services property;

```dart
@Controller
class UserController {

  @Autowired
  late final UserService userService;

  void showUserDetailView(double id){

    User? user = userService.getUserById();
    
    if(user == null){
      screen(UserNotFoundScreen(), RouteMode.PUSH);
      return;
    }

    screen(UserDetailScreen(user: user), RouteMode.PUSH);  
  }
}
```



## Test

```bash
# Generate additional source first
flutter packages pub run build_runner build --delete-conflicting-outputs

# Then run test
flutter test
```
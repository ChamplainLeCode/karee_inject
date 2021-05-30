import 'package:meta/meta_meta.dart';

@Target({TargetKind.field})
class AutowiredAnnotation {
  const AutowiredAnnotation();
}

/// ### Description
/// Autowired: Annotation used to setup a field as injectable field.
/// **This version only supports field injection**
///
/// ### Injectable supported
/// The above list is all the known classes supported
///   - Service
///
/// ### Client supported
/// Client here, it is all the known classes in which we can inject some injectable
///   - Controller
///   - Service
///
/// ### Usage
///
/// To use this annotation, you should first create the Injectable. In my case
/// I will create a class to manage user named `UserService`.
///
/// ```dart
///     @Service
///     class UserService {
///
///       Future<User?> save(User user) async {
///
///         var savedUser = ...;
///
///         /// Some code to save an user
///
///         return savedUser;
///       }
///     }
/// ```
///
/// Setup where to inject instance of your class.
///
/// **Notes:**
///   - To respect MVC architecture, we should not inject Controller into
/// a service.
///   - Injectable class should declare or not a default constructor with no
/// parameters
///   - The property marked as @Autowired should be public
///
/// ```dart
///     @Service
///     class ParameterService {
///
///       @Autowired
///       final late UserService userService;
///
///       Future<Parameter?> setUserPreferredLang(User u, Locale locale) async {
///
///         var user = await userService.save(u);
///
///         if(user != null){
///            var parameter = Parameter();
///            parameter..user = user
///                     ..locale = locale;
///            return save(parameter);
///         }
///         return null;
///       }
///
///       Future<Parameter?> save(Parameter p) async {
///
///
///         var savedParameter = ...;
///
///         /// Some code to save a parameter
///
///         return savedParameter;
///       }
///     }
///
///     @Controller
///     class ParameterController {
///
///       @Autowired
///       ParameterService service;
///
///
///     }
/// ```
const AutowiredAnnotation Autowired = AutowiredAnnotation();

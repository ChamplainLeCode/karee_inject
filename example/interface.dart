import 'package:karee_inject/karee_inject.dart';

@Service
class DatabaseInterface {
  FunctionalFetch<T> find<T>() => FunctionalFetch<T>();
}

class FunctionalFetch<T> {
  List<T> where(String field, {isEqualTo}) {
    return <T>[];
  }

  T? firstWhere(String field, {isEqualTo}) {
    T? a;
    return a;
  }
}

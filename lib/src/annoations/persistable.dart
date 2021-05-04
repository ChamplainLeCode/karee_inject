class Persistable {
  final String collection;
  final Type? serializer;

  const Persistable({required this.collection, this.serializer});
}

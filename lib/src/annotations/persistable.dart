///
/// Annotation used on entity.
///
class Persistable {
  /// The database collection or table linked to this entity.
  final String collection;

  /// The serializer of this entity.
  final Type? serializer;

  /// Constructor of the annotation.
  const Persistable({required this.collection, this.serializer});
}

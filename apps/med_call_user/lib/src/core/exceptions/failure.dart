/// Представление ошибки, возвращаемой в domain/usecase слое.
class Failure {
  final String message;

  const Failure(this.message);

  @override
  String toString() => message;
}
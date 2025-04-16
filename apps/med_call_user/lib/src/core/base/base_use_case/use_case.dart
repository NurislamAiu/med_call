/// Абстрактный класс, описывающий use case с входными параметрами [Params]
/// и возвращаемым результатом типа [T].
abstract class UseCase<T, Params> {
  /// Метод вызова use case
  Future<T> call(Params params);
}
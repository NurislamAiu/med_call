/// Интерфейс, описывающий DTO-объект, который можно преобразовать в Entity.
/// Используется в data-слое.
abstract class BaseDto<T> {
  /// Преобразование DTO в Entity
  T toEntity();
}
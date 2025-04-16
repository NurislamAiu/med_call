/// Класс-обёртка результата выполнения.
/// Позволяет легко обрабатывать как успешные, так и неудачные запросы.
class Result<T> {
  final T? data;         // результат, если успех
  final String? error;   // описание ошибки, если неудача

  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;

  /// Проверка, завершился ли результат успешно
  bool get isSuccess => error == null;
}
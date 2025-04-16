/// Интерфейс для всех ViewController-ов.
/// Можно использовать для связывания UI с use case-ами и состоянием.
abstract class BaseViewController {
  void init();     // Инициализация (например, получение данных)
  void dispose();  // Очистка ресурсов
}
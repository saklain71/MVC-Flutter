class Model{
  static int _counter = 0;
  /// getter
  static int get counter => _counter;
  /// setter
  static int increment() => ++_counter;
  static int decrement() => --_counter;

}
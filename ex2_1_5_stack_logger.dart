mixin Loggable {
  void log(String msg) => print('[LOG - ${DateTime.now()}]: $msg');
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log('Push: $element');
  }

  T? pop() {
    if (_storage.isEmpty) {
      log('Pop Error: Stack ว่างเปล่า');
      return null;
    }
    T item = _storage.removeLast();
    log('Pop: $item');
    return item;
  }
}

void main() {
  Stack<String> names = Stack<String>();
  names.push('อาม');
  names.push('ฟ้า');
  names.pop();

  Stack<int> numbers = Stack<int>();
  numbers.push(100);
  numbers.pop();
  numbers.pop();
}

abstract class Reactive<W> {
  W _actualState;

  W get value => _actualState;

  final _listens = <Function>[];

  Reactive(W initial) {
    _actualState = initial;
  }

  void update(W newState) {
    _actualState = newState;
    _notifyListens();
  }

  void _notifyListens() {
    for (var i = 0; i < _listens.length; i++) {
      _listens[i](_actualState);
    }
  }

  void listen(void Function(W actual) onChange) {
    _listens.add(onChange);
  }
}

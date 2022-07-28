import 'package:flutter/foundation.dart';

import 'base_observable.dart';
import 'observer.dart';

class LiteObservable<TNotifiedArg> extends BaseObservable<TNotifiedArg> {
  final ObserverList<Observer<TNotifiedArg>> _observers = ObserverList();

  LiteObservable();

  @override
  bool subscribe(Observer<TNotifiedArg> observer) {
    if (!_observers.contains(observer)) {
      _observers.add(observer);
      return true;
    }
    return false;
  }

  @override
  void unsubscribe(Observer<TNotifiedArg> observer) {
    _observers.remove(observer);
  }

  @override
  void notify(TNotifiedArg arg) {
    for (var observer in _observers) {
      observer.notifyUpdate(this, arg);
    }
  }
}

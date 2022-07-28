import 'base_observable.dart';

abstract class Observer<TNotifiedArg> {
  void notifyUpdate(BaseObservable<TNotifiedArg> observable, TNotifiedArg arg);
}

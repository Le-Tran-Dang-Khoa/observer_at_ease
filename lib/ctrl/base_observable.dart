import 'observer.dart';

abstract class BaseObservable<TNotifiedArg> {
  bool subscribe(Observer<TNotifiedArg> observer);

  void unsubscribe(Observer<TNotifiedArg> observer);

  void notify(TNotifiedArg arg);
}

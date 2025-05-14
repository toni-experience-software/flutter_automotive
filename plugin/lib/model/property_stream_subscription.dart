import 'dart:async';

class PropertyStreamSubscription<T> implements StreamSubscription<T> {
  PropertyStreamSubscription({
    required Stream<T> stream,
    required Future<void> Function() onCancel,
    required Function(T) onData,
  })  : _stream = stream,
        _onCancel = onCancel {
    _internalSub = _stream.listen(onData);
  }

  final Stream<T> _stream;
  final Future<void> Function() _onCancel;

  late final StreamSubscription<T> _internalSub;

  @override
  Future<E> asFuture<E>([E? futureValue]) => _internalSub.asFuture(futureValue);

  @override
  Future<void> cancel() async {
    await _onCancel();
    await _internalSub.cancel();
  }

  @override
  bool get isPaused => _internalSub.isPaused;

  @override
  void onData(void Function(T data)? handleData) =>
      _internalSub.onData(handleData);

  @override
  void onDone(void Function()? handleDone) => _internalSub.onDone(handleDone);

  @override
  void onError(Function? handleError) => _internalSub.onError(handleError);

  @override
  void pause([Future<void>? resumeSignal]) => _internalSub.pause(resumeSignal);

  @override
  void resume() => _internalSub.resume();
}

class PropertyStreamData<T> {
  PropertyStreamData({
    required Stream<dynamic> stream,
    required void Function() onUnsubscribe,
  }) : _onUnsubscribe = onUnsubscribe,
       stream = stream.where((e) => e is T).cast<T>();

  final Stream<T> stream;
  final void Function() _onUnsubscribe;

  bool closed = false;

  void unsubscribe() {
    if (closed == false) {
      closed = true;
      _onUnsubscribe();
    }
  }
}

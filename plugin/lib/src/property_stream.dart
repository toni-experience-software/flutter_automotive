class PropertyStreamData<T> {
  PropertyStreamData({
    required this.stream,
    required void Function() onUnsubscribe,
  }) : _onUnsubscribe = onUnsubscribe;

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

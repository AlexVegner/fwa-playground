import 'dart:async';

main() {
  var streamController = StreamController();
  // Accessing the stream and listening for data event
  streamController.stream.listen((data) {
    print('Got eem! $data');
  });

  streamController.sink.add('event');
  streamController.close();
}

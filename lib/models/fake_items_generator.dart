import 'package:fwa_playground/models/item_model.dart';

List<ListItem> generateItems() {
  return List<ListItem>.generate(
    1000,
    (i) => i % 6 == 0
        ? HeadingItem("Heading $i")
        : MessageItem("Sender $i", "Message body $i"),
  );
}
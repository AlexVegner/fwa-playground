main() {
  try {
    fi();
  } catch (e) {
    print('Something really unknown: $e');
  } 
}

fi() {
  try {
    throw 1;
    // command 1
    // command 2
    // command 3
  } on String {
    print("It's string");
  } on Exception catch (e, s) {
    print('Unknown exception: $e, $s');
  } catch (e) {
    // No specified type, handles all
    rethrow;
  } finally {

  }
}

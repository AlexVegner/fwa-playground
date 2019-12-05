import 'package:meta/meta.dart';

@immutable
abstract class TestState {}
  
class InitialTestState extends TestState {}

class LoadiingTestState extends TestState {}

class DataLoadedTestState extends TestState {
  final String data;

  DataLoadedTestState(this.data);
}
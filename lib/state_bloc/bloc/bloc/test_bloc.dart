import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  @override
  TestState get initialState => InitialTestState();

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    // TODO: Add Logic
  }
}

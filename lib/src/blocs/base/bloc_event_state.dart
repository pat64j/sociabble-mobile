import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc_base.dart';

class BlocEvent extends Object{}
class BlocState extends Object{}

abstract class BlocEventStateBase<BlocEvent, BlocState> implements BlocBase{
  PublishSubject<BlocEvent> _eventController = PublishSubject<BlocEvent>();
  BehaviorSubject<BlocState> _stateController = BehaviorSubject<BlocState>();


  //
  // To be invoked to emit and event
  //
  Function(BlocEvent) get emitEvent => _eventController.sink.add;

  //
  // Current / New state
  //
  Stream<BlocState> get state => _stateController.stream;

  //
  // External processing of event
  //
  Stream<BlocState> eventHandler(BlocEvent event, BlocState currentState);

  //
  // Initial state
  //
  final BlocState initialState;

  BlocEventStateBase({
    @required this.initialState
  }){
    //
    // For each event received, we invoke the [eventHandler] and
    // emit any resulting new state
    //
    _eventController.listen((BlocEvent event) {
      BlocState currentState = _stateController.value ?? initialState;
      eventHandler(event, currentState).forEach((BlocState newState) {
        _stateController.sink.add(newState);
      });
    });
  }



  @override
  void dispose() {
    _eventController?.close();
    _stateController?.close();
  }

}
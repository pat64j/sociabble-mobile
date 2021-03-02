import 'package:flutter/foundation.dart';
import 'package:sociable/src/blocs/base/bloc_event_state.dart';

class AppInitializationState extends BlocState {
  final bool isInitialized;
  final bool isInitializing;
  final bool isVerified;
  final bool isAuthChecked;

  AppInitializationState({
    @required this.isInitialized,
    this.isInitializing: false,
    this.isVerified: false,
    this.isAuthChecked: false,
  });

  factory AppInitializationState.notInitialized() {
    return AppInitializationState(
      isInitialized: false,
      isAuthChecked: false,
    );
  }

  factory AppInitializationState.progressing() {
    return AppInitializationState(
      isInitialized: false,
      isInitializing: true,
      isVerified: false,
    );
  }

  factory AppInitializationState.isAuthenticated() {
    return AppInitializationState(
      isInitialized: true,
      isVerified: true,
      isAuthChecked: true
    );
  }

  factory AppInitializationState.isNotAuthenticated() {
    return AppInitializationState(
      isInitialized: true,
      isVerified: false,
      isAuthChecked: true,
    );
  }

  factory AppInitializationState.initialized() {
    return AppInitializationState(
      isInitialized: true,
    );
  }
}

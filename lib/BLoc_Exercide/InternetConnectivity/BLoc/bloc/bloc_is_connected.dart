import 'dart:async';

import 'package:authentication_pages/BLoc_Exercide/InternetConnectivity/BLoc/bloc/event_is_connected.dart';
import 'package:authentication_pages/BLoc_Exercide/InternetConnectivity/BLoc/bloc/state_is_connected.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;
  InternetBloc() : super(InternetInitialState()) {
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetSuccessEvent>((event, emit) => emit(InternetSuccessState()));

    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetSuccessEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }
  @override
  Future<void> close()
  {
    connectivitySubscription?.cancel();
    return super.close();
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEventSubmit>((event, emit) {
      print("${event.username} , ${event.password}");
    });

    on<RegisterEventSubmit>((event, emit) {
      // TODO: implement event handler
    });
  }
}

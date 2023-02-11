import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo0/src/models/user.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEventSubmit>((event, emit) {
      print("Login: ${event.payload.username} , ${event.payload.password}");
    });

    on<RegisterEventSubmit>((event, emit) {
      print("Register: ${event.payload.username} , ${event.payload.password}");
    });
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo0/src/models/user.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginEventSubmit>((event, emit) async {
      emit(state.copyWith(status: LoginStatus.fetching));
      // delay 3 sec
      await Future.delayed(Duration(seconds: 3));

      print("Login Btn Click: ${event.payload.username} , ${event.payload.password}");

      final username = event.payload.username;
      final password = event.payload.password;
      if (username == "admin" && password == "1234") {
        //success
        emit(state.copyWith(status: LoginStatus.success));
      }else{
        //fail
        emit(state.copyWith(status: LoginStatus.failed));
      }

    });

    on<RegisterEventSubmit>((event, emit) {
      print("Register: ${event.payload.username} , ${event.payload.password}");
    });
  }
}

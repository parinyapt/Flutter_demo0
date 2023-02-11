part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginEventSubmit extends LoginEvent {
  final User payload;

  LoginEventSubmit(this.payload);
}

class RegisterEventSubmit extends LoginEvent {
  final User payload;

  RegisterEventSubmit(this.payload);
}
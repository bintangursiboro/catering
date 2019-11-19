import 'package:equatable/equatable.dart';

abstract class LoginScreenEvent extends Equatable {
  LoginScreenEvent([List props = const []]) : super([props]);
}

class LoginEvent extends LoginScreenEvent {
  final String username;
  final String password;
  LoginEvent({this.password, this.username}) : super([password, username]);
}

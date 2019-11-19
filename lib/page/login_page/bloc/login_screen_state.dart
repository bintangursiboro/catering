import 'package:equatable/equatable.dart';

abstract class LoginScreenState extends Equatable {
  LoginScreenState([List props = const []]) : super([props]);
}

class LoginScreenLoaded extends LoginScreenState {}

class LoginScreenError extends LoginScreenState {}

class LoginScreenLoading extends LoginScreenState {}

class LoginScreenInitial extends LoginScreenState {}

import 'dart:html';

import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoginState extends CubitStates {
  @override
  List<Object?> get props => [];
}

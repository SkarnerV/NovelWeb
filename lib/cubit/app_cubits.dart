import 'package:bloc/bloc.dart';
import 'package:novel/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(LoginState());
  }
}

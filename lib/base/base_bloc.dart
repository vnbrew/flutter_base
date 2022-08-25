import 'package:flutter_base/base/base_event.dart';
import 'package:flutter_base/base/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState> extends BaseBlocDelegate<E,S> {
  BaseBloc(S initialState) : super(initialState);
}

abstract class BaseBlocDelegate<E extends BaseEvent, S extends BaseState> extends Bloc<E,S> {
  BaseBlocDelegate(S initialState) : super(initialState);
}
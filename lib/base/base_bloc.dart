import 'package:flutter_base/base/base_bloc_event.dart';
import 'package:flutter_base/base/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends Bloc<E, S> {
  BaseBloc(S initialState) : super(initialState);
}

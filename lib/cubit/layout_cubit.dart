
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout_states.dart';
class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);
}
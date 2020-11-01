import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'format_date_state.dart';

class FormatDateCubit extends Cubit<FormatDateState> {
  FormatDateCubit() : super(FormatDateInitial());
}

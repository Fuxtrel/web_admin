import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'data_table_page_event.dart';
part 'data_table_page_state.dart';

class DataTablePageBloc extends Bloc<DataTablePageEvent, DataTablePageState> {
  DataTablePageBloc() : super(DataTablePageState()) {
    on<DataTablePageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

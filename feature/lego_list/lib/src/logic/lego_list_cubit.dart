import 'package:flutter_bloc/flutter_bloc.dart';
import 'lego_list_state.dart';
import 'lego_list_service.dart';

class LegoListCubit extends Cubit<LegoListState> {
  final LegoListService service;

  LegoListCubit(this.service) : super(const LegoListState.initial());

  Future<void> loadItems() async {
    emit(const LegoListState.loading());
    try {
      final items = await service.fetchItems();
      emit(LegoListState.success(items));
    } catch (e) {
      emit(LegoListState.error(e.toString()));
    }
  }
}
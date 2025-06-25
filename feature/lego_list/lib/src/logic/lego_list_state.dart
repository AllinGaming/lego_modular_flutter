import 'package:freezed_annotation/freezed_annotation.dart';

part 'lego_list_state.freezed.dart';

@freezed
class LegoListState with _$LegoListState {
  const factory LegoListState.initial() = _Initial;
  const factory LegoListState.loading() = _Loading;
  const factory LegoListState.success(List<String> items) = _Success;
  const factory LegoListState.error(String message) = _Error;
}
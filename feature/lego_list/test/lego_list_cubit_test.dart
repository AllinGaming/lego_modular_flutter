import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:lego_list/src/logic/lego_list_cubit.dart';
import 'package:lego_list/src/logic/lego_list_service.dart';
import 'package:lego_list/src/logic/lego_list_state.dart';

class MockLegoListService extends Mock implements LegoListService {}

void main() {
  late MockLegoListService mockService;

  setUp(() {
    mockService = MockLegoListService();
  });

  blocTest<LegoListCubit, LegoListState>(
    'emits [loading, success] when fetchItems succeeds',
    build: () {
      when(() => mockService.fetchItems())
          .thenAnswer((_) async => ['Item1', 'Item2']);
      return LegoListCubit(mockService);
    },
    act: (cubit) => cubit.loadItems(),
    expect: () => [
      const LegoListState.loading(),
      LegoListState.success(['Item1', 'Item2']),
    ],
  );

  blocTest<LegoListCubit, LegoListState>(
    'emits [loading, error] when fetchItems throws',
    build: () {
      when(() => mockService.fetchItems())
          .thenThrow(Exception('API Error'));
      return LegoListCubit(mockService);
    },
    act: (cubit) => cubit.loadItems(),
    expect: () => [
      const LegoListState.loading(),
      isA<LegoListState>().having(
        (s) => s,
        'error',
        LegoListState.error('Exception: API Error'),
      ),
    ],
  );
}

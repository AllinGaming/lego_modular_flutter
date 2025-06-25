import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lego_list/src/logic/lego_list_navigation.dart';
import 'package:lego_list/src/logic/lego_list_service.dart';
import 'package:lego_list/src/ui/lego_list_page.dart';
import 'package:mocktail/mocktail.dart';
import 'package:get_it/get_it.dart';

class MockLegoListService extends Mock implements LegoListService {}
class MockLegoListNavigation extends Mock implements LegoListNavigation {}

void main() {
  late MockLegoListService mockService;
  late MockLegoListNavigation mockNavigation;

  setUp(() {
    mockService = MockLegoListService();
    mockNavigation = MockLegoListNavigation();
    GetIt.I.reset();

    // Register mocks
    GetIt.I.registerLazySingleton<LegoListService>(() => mockService);
    GetIt.I.registerLazySingleton<LegoListNavigation>(() => mockNavigation);
  });

  testWidgets('shows list of items when fetchItems succeeds', (tester) async {
    // Arrange
    when(() => mockService.fetchItems())
        .thenAnswer((_) async => ['Item 1', 'Item 2', 'Item 3']);

    // Act
    await tester.pumpWidget(
      MaterialApp(
        home: LegoListPage(navigation: mockNavigation),
      ),
    );

    // Show loading state
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Let cubit emit success
    await tester.pumpAndSettle();

    // Assert list
    expect(find.text('Item 1'), findsOneWidget);
    expect(find.text('Item 2'), findsOneWidget);
    expect(find.text('Item 3'), findsOneWidget);
  });
testWidgets('shows error widget when fetchItems fails', (tester) async {
  // Arrange
  when(() => mockService.fetchItems()).thenThrow(Exception('Boom'));

  // Act
  await tester.pumpWidget(
    MaterialApp(
      home: LegoListPage(navigation: mockNavigation),
    ),
  );

  // Don’t check for CircularProgressIndicator – it passes quickly
  await tester.pumpAndSettle();

  // Assert error
  expect(find.textContaining('Error'), findsOneWidget);
});

}
